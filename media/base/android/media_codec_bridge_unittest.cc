// Copyright (c) 2013 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#include <string>

#include "base/basictypes.h"
#include "base/logging.h"
#include "base/memory/scoped_ptr.h"
#include "media/base/android/media_codec_bridge.h"
#include "media/base/decoder_buffer.h"
#include "media/base/test_data_util.h"
#include "testing/gmock/include/gmock/gmock.h"

namespace {

// The first frame of
// http://www.html5rocks.com/en/tutorials/audio/quick/test.mp3
unsigned char test_mp3[] = {
  0xff, 0xfb, 0xd2, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x69, 0x05, 0x00,
  0x00, 0x00, 0x00, 0x00, 0x0d, 0x20, 0x00, 0x00, 0x00, 0x2a, 0x7e, 0x40,
  0xc0, 0x19, 0x4a, 0x80, 0x0d, 0x60, 0x48, 0x1b, 0x40, 0xf7, 0xbd, 0xb9,
  0xd9, 0x40, 0x6f, 0x82, 0x01, 0x8b, 0x17, 0xa0, 0x80, 0xc5, 0x01, 0xad,
  0x9a, 0xd3, 0x00, 0x12, 0xc0, 0x72, 0x93, 0x67, 0xd0, 0x03, 0x6f, 0xa4,
  0xc0, 0xc3, 0x23, 0xee, 0x9b, 0xc0, 0xcc, 0x02, 0xa0, 0xa1, 0x30, 0x0c,
  0x52, 0x2d, 0xfd, 0x6e, 0x08, 0x83, 0x60, 0x40, 0x46, 0x06, 0x4b, 0x20,
  0x82, 0x82, 0x7f, 0xd4, 0x81, 0xe7, 0x00, 0x64, 0x20, 0x18, 0xec, 0xc2,
  0x06, 0x57, 0x0f, 0x81, 0x93, 0x0b, 0x00, 0x66, 0xe3, 0xb7, 0xe8, 0x32,
  0x6e, 0xf0, 0x32, 0xb0, 0x58, 0x0c, 0x7c, 0x3a, 0x03, 0x22, 0x14, 0x80,
  0xc9, 0x01, 0x80, 0x30, 0x20, 0x14, 0x0c, 0x96, 0x73, 0xfe, 0x9f, 0x6c,
  0x0c, 0xd2, 0x25, 0x0f, 0xdc, 0x0c, 0x32, 0x43, 0x03, 0x27, 0x87, 0xc0,
  0xc2, 0xc0, 0x20, 0xfc, 0x42, 0xc5, 0xff, 0xff, 0xd4, 0x80, 0x01, 0x01,
  0x80, 0xc3, 0x81, 0x01, 0x95, 0x03, 0x28, 0x82, 0xc0, 0xc3, 0x01, 0xa1,
  0x06, 0x81, 0x87, 0xc2, 0x40, 0x64, 0xc1, 0xf0, 0x12, 0x02, 0xff, 0xf6,
  0x5b, 0x9f, 0x44, 0xdc, 0xdd, 0x0b, 0x38, 0x59, 0xe0, 0x31, 0x71, 0x60,
  0x0c, 0xb4, 0x22, 0x03, 0x3b, 0x96, 0x40, 0xc8, 0x63, 0x90, 0x0a, 0x23,
  0x81, 0x9e, 0x4c, 0x20, 0x65, 0xb3, 0x18, 0x19, 0x6c, 0x42, 0x06, 0x36,
  0x1d, 0x01, 0x90, 0x87, 0xdf, 0xff, 0xd0, 0x65, 0xa6, 0xea, 0x66, 0xfd,
  0x40, 0x0c, 0x48, 0x03, 0x1a, 0x09, 0x01, 0x21, 0x98, 0x19, 0x2c, 0x36,
  0x06, 0x43, 0x21, 0x81, 0x92, 0xca, 0x60, 0x64, 0x70, 0xb8, 0x19, 0x20,
  0x6c, 0x02, 0x83, 0x80, 0xcb, 0x60, 0x65, 0x32, 0x28, 0x18, 0x64, 0x24,
  0x06, 0x3a, 0x0c, 0x00, 0xe1, 0x00, 0x18, 0xd0, 0x35, 0xff, 0xff, 0xff,
  0xe8, 0x32, 0xef, 0xb2, 0x90, 0x65, 0xbb, 0xdd, 0x94, 0x82, 0x0b, 0x4c,
  0xfa, 0x25, 0xf3, 0x74, 0x13, 0x0f, 0xf8, 0x19, 0x28, 0x84, 0x06, 0x36,
  0x11, 0x01, 0x20, 0x80, 0x18, 0xb4, 0x52, 0x0e, 0x15, 0x00, 0x30, 0x50,
  0x0c, 0x84, 0x32, 0x03, 0x11, 0x04, 0x03, 0x48, 0x04, 0x00, 0x00, 0x31,
  0x21, 0x00, 0x0c, 0x84, 0x18, 0x03, 0x07, 0x85, 0x40, 0xc6, 0xa5, 0x70,
  0x32, 0xb8, 0x7c, 0x0c, 0x54, 0x04, 0x00, 0xd0, 0x08, 0x59, 0x58, 0x18,
  0x20, 0x14, 0x06, 0x30, 0x30, 0x01, 0x9b, 0x86, 0x00, 0x6b, 0x54, 0xa8,
  0x19, 0x8c, 0x2a, 0x06, 0x16, 0x09, 0x01, 0xa0, 0xd0, 0xa0, 0x69, 0x74,
  0xb8, 0x19, 0xc4, 0x4a, 0xa3, 0xda, 0x9d, 0x1e, 0x4f, 0x05, 0xc0, 0x5b,
  0x0b, 0x03, 0xc2, 0x76, 0xa3, 0x4f, 0xb9, 0x16, 0xc2, 0x70, 0x41, 0x07,
  0xa0, 0x84, 0x16, 0x38, 0x4a, 0xc8, 0xaf, 0xee, 0x7f, 0x93, 0xb5, 0x5c,
  0x39, 0x1e, 0x29, 0xd9, 0x8c, 0x80, 0xb5, 0x80, 0xe6, 0x85, 0xb2, 0x99,
  0x68, 0x85, 0x46, 0x91, 0x60, 0xdb, 0x06, 0xfa, 0x38, 0x7a, 0xc7, 0xac,
  0x85, 0xa8, 0xd3, 0xe6, 0x99, 0x3b, 0x66, 0x43, 0x23, 0x1f, 0x84, 0xe1,
  0x65, 0x5e, 0xbc, 0x84, 0x18, 0x62, 0xe6, 0x42, 0x0b, 0x82, 0xe4, 0xd3,
  0x42, 0xd2, 0x05, 0x81, 0x4e, 0xe4, 0x9f, 0x8c, 0xc8, 0x7f, 0xa3, 0xe0,
  0x8d, 0xf1, 0x0f, 0x38, 0xe5, 0x3f, 0xc4, 0x2c, 0x24, 0x65, 0x8d, 0xb9,
  0x58, 0xac, 0x39, 0x0e, 0x37, 0x99, 0x2e, 0x85, 0xe0, 0xb7, 0x98, 0x41,
  0x20, 0x38, 0x1b, 0x95, 0x07, 0xfa, 0xa8, 0x9c, 0x21, 0x0f, 0x13, 0x8c,
  0xa5, 0xc1, 0x76, 0xae, 0x0b, 0xc1, 0x30, 0x27, 0x08, 0xc1, 0xf6, 0x4d,
  0xce, 0xb4, 0x41, 0x38, 0x1e, 0x82, 0x10, 0x74, 0x45, 0x91, 0x90, 0xff,
  0x41, 0x8b, 0x62, 0x1a, 0x71, 0xb6, 0x45, 0x63, 0x8c, 0xce, 0xb8, 0x54,
  0x1b, 0xe8, 0x5d, 0x9e, 0x35, 0x9d, 0x6c, 0xac, 0xe8, 0x83, 0xa1, 0xe9,
  0x3f, 0x13, 0x74, 0x11, 0x04, 0x10, 0xf1, 0x37, 0x38, 0xc6, 0x00, 0x60,
  0x27, 0x48, 0x38, 0x85, 0x92, 0x76, 0xb7, 0xf3, 0xa7, 0x1c, 0x4b, 0xf9,
  0x3b, 0x5a, 0x88, 0xac, 0x60, 0x1b, 0x85, 0x81, 0x16, 0xab, 0x44, 0x17,
  0x08, 0x2e, 0x0f, 0xd4, 0xe2, 0xde, 0x49, 0xc9, 0xe1, 0xc0, 0xc0, 0xa0,
  0x7e, 0x73, 0xa1, 0x67, 0xf8, 0xf5, 0x9f, 0xc4, 0x21, 0x50, 0x4f, 0x05,
  0x2c, 0xfc, 0x5c, 0xaa, 0x85, 0xb0, 0xfa, 0x67, 0x80, 0x7e, 0x0f, 0xfd,
  0x92, 0x30, 0xd5, 0xa0, 0xd4, 0x05, 0xdd, 0x06, 0x68, 0x1d, 0x6e, 0x4e,
  0x8b, 0x79, 0xd6, 0xfc, 0xff, 0x2e, 0x6e, 0x7c, 0xba, 0x03, 0x90, 0xd4,
  0x25, 0x65, 0x8e, 0xe7, 0x3a, 0xd1, 0xd6, 0xdc, 0xf0, 0xbe, 0x12, 0xc4,
  0x31, 0x08, 0x16, 0x70, 0x31, 0x85, 0x61, 0x38, 0x27, 0x0a, 0x91, 0x5f,
  0x03, 0x38, 0xeb, 0x37, 0x13, 0x48, 0x41, 0xbe, 0x7f, 0x04, 0x70, 0x62,
  0x2b, 0x15, 0x91, 0x67, 0x63, 0x4f, 0xad, 0xa7, 0x1d, 0x3f, 0x44, 0x17,
  0x02, 0x08, 0x0d, 0xf2, 0xfc, 0x03, 0xa0, 0x74, 0x21, 0x8b, 0x07, 0x3a,
  0x8d, 0x0f, 0x54, 0x58, 0x94, 0x12, 0xc5, 0x62, 0x18, 0xb9, 0x42, 0xf0,
  0x6c, 0x73, 0xa0, 0x92, 0xad, 0x27, 0x1c, 0x20, 0x0f, 0xc1, 0xca, 0x44,
  0x87, 0x47, 0xc5, 0x43, 0x23, 0x01, 0xda, 0x23, 0xe2, 0x89, 0x38, 0x9f,
  0x1f, 0x8d, 0x8c, 0xc6, 0x95, 0xa3, 0x34, 0x21, 0x21, 0x2d, 0x49, 0xea,
  0x4b, 0x05, 0x85, 0xf5, 0x58, 0x25, 0x13, 0xcd, 0x51, 0x19, 0x1a, 0x88,
  0xa6, 0x83, 0xd6, 0xd0, 0xbc, 0x25, 0x19, 0x1c, 0x92, 0x12, 0x44, 0x5d,
  0x1c, 0x04, 0xf1, 0x99, 0xdf, 0x92, 0x8e, 0x09, 0x85, 0xf3, 0x88, 0x82,
  0x4c, 0x22, 0x17, 0xc5, 0x25, 0x23, 0xed, 0x78, 0xf5, 0x41, 0xd1, 0xe9,
  0x8a, 0xb3, 0x52, 0xd1, 0x3d, 0x79, 0x81, 0x4d, 0x31, 0x24, 0xf9, 0x38,
  0x96, 0xbc, 0xf4, 0x8c, 0x25, 0xe9, 0xf2, 0x73, 0x94, 0x85, 0xc2, 0x61,
  0x6a, 0x34, 0x68, 0x65, 0x78, 0x87, 0xa6, 0x4f
};

}  // namespace

namespace media {

// Helper macro to skip the test if MediaCodecBridge isn't available.
#define SKIP_TEST_IF_MEDIA_CODEC_BRIDGE_IS_NOT_AVAILABLE()        \
  do {                                                            \
    if (!MediaCodecBridge::IsAvailable()) {                       \
      VLOG(0) << "Could not run test - not supported on device."; \
      return;                                                     \
    }                                                             \
  } while (0)

static const int kPresentationTimeBase = 100;

static inline const base::TimeDelta InfiniteTimeOut() {
  return base::TimeDelta::FromMicroseconds(-1);
}

void DecodeMediaFrame(
    VideoCodecBridge* media_codec, const uint8* data, size_t data_size,
    const base::TimeDelta input_presentation_timestamp,
    const base::TimeDelta initial_timestamp_lower_bound) {
  base::TimeDelta input_pts = input_presentation_timestamp;
  base::TimeDelta timestamp = initial_timestamp_lower_bound;
  base::TimeDelta new_timestamp;
  for (int i = 0; i < 10; ++i) {
    int input_buf_index = -1;
    MediaCodecStatus status =
        media_codec->DequeueInputBuffer(InfiniteTimeOut(), &input_buf_index);
    ASSERT_EQ(MEDIA_CODEC_OK, status);

    media_codec->QueueInputBuffer(
        input_buf_index, data, data_size, input_presentation_timestamp);

    size_t unused_offset = 0;
    size_t size = 0;
    bool eos = false;
    int output_buf_index = -1;
    status = media_codec->DequeueOutputBuffer(InfiniteTimeOut(),
        &output_buf_index, &unused_offset, &size, &new_timestamp, &eos);

    if (status == MEDIA_CODEC_OK && output_buf_index > 0)
      media_codec->ReleaseOutputBuffer(output_buf_index, false);
    // Output time stamp should not be smaller than old timestamp.
    ASSERT_TRUE(new_timestamp >= timestamp);
    input_pts += base::TimeDelta::FromMicroseconds(33000);
    timestamp = new_timestamp;
  }
}

TEST(MediaCodecBridgeTest, Initialize) {
  SKIP_TEST_IF_MEDIA_CODEC_BRIDGE_IS_NOT_AVAILABLE();

  scoped_ptr<media::MediaCodecBridge> media_codec;
  media_codec.reset(VideoCodecBridge::Create(kCodecH264, false));
}

TEST(MediaCodecBridgeTest, DoNormal) {
  SKIP_TEST_IF_MEDIA_CODEC_BRIDGE_IS_NOT_AVAILABLE();

  scoped_ptr<media::AudioCodecBridge> media_codec;
  media_codec.reset(AudioCodecBridge::Create(kCodecMP3));

  ASSERT_TRUE(media_codec->Start(kCodecMP3, 44100, 2, NULL, 0, false, NULL));

  int input_buf_index = -1;
  MediaCodecStatus status =
      media_codec->DequeueInputBuffer(InfiniteTimeOut(), &input_buf_index);
  ASSERT_EQ(MEDIA_CODEC_OK, status);
  ASSERT_GE(input_buf_index, 0);

  int64 input_pts = kPresentationTimeBase;
  media_codec->QueueInputBuffer(
      input_buf_index, test_mp3, sizeof(test_mp3),
      base::TimeDelta::FromMicroseconds(++input_pts));

  status = media_codec->DequeueInputBuffer(InfiniteTimeOut(), &input_buf_index);
  media_codec->QueueInputBuffer(
      input_buf_index, test_mp3, sizeof(test_mp3),
      base::TimeDelta::FromMicroseconds(++input_pts));

  status = media_codec->DequeueInputBuffer(InfiniteTimeOut(), &input_buf_index);
  media_codec->QueueEOS(input_buf_index);

  input_pts = kPresentationTimeBase;
  bool eos = false;
  while (!eos) {
    size_t unused_offset = 0;
    size_t size = 0;
    base::TimeDelta timestamp;
    int output_buf_index = -1;
    status = media_codec->DequeueOutputBuffer(InfiniteTimeOut(),
        &output_buf_index, &unused_offset, &size, &timestamp, &eos);
    switch (status) {
      case MEDIA_CODEC_DEQUEUE_OUTPUT_AGAIN_LATER:
        FAIL();
        return;

      case MEDIA_CODEC_OUTPUT_FORMAT_CHANGED:
        continue;

      case MEDIA_CODEC_OUTPUT_BUFFERS_CHANGED:
        ASSERT_TRUE(media_codec->GetOutputBuffers());
        continue;

      default:
        break;
    }
    ASSERT_GE(output_buf_index, 0);
    EXPECT_LE(1u, size);
    if (!eos)
      EXPECT_EQ(++input_pts, timestamp.InMicroseconds());
    ASSERT_LE(input_pts, kPresentationTimeBase + 2);
  }
  ASSERT_EQ(input_pts, kPresentationTimeBase + 2);
}

TEST(MediaCodecBridgeTest, InvalidVorbisHeader) {
  SKIP_TEST_IF_MEDIA_CODEC_BRIDGE_IS_NOT_AVAILABLE();

  scoped_ptr<media::AudioCodecBridge> media_codec;
  media_codec.reset(AudioCodecBridge::Create(kCodecVorbis));

  // The first byte of the header is not 0x02.
  uint8 invalid_first_byte[] = { 0x00, 0xff, 0xff, 0xff, 0xff };
  EXPECT_FALSE(media_codec->Start(
      kCodecVorbis, 44100, 2, invalid_first_byte, sizeof(invalid_first_byte),
      false, NULL));

  // Size of the header does not match with the data we passed in.
  uint8 invalid_size[] = { 0x02, 0x01, 0xff, 0x01, 0xff };
  EXPECT_FALSE(media_codec->Start(
      kCodecVorbis, 44100, 2, invalid_size, sizeof(invalid_size), false, NULL));

  // Size of the header is too large.
  size_t large_size = 8 * 1024 * 1024 + 2;
  uint8* very_large_header = new uint8[large_size];
  very_large_header[0] = 0x02;
  for (size_t i = 1; i < large_size - 1; ++i)
    very_large_header[i] = 0xff;
  very_large_header[large_size - 1] = 0xfe;
  EXPECT_FALSE(media_codec->Start(
      kCodecVorbis, 44100, 2, very_large_header, 0x80000000, false, NULL));
  delete[] very_large_header;
}

TEST(MediaCodecBridgeTest, PresentationTimestampsDoNotDecrease) {
  SKIP_TEST_IF_MEDIA_CODEC_BRIDGE_IS_NOT_AVAILABLE();

  scoped_ptr<VideoCodecBridge> media_codec;
  media_codec.reset(VideoCodecBridge::Create(kCodecVP8, false));
  EXPECT_TRUE(media_codec->Start(
      kCodecVP8, gfx::Size(320, 240), NULL, NULL));
  scoped_refptr<DecoderBuffer> buffer =
      ReadTestDataFile("vp8-I-frame-320x240");
  DecodeMediaFrame(
      media_codec.get(), buffer->data(), buffer->data_size(),
      base::TimeDelta(), base::TimeDelta());

  // Simulate a seek to 10 seconds, and each chunk has 2 I-frames.
  std::vector<uint8> chunk(buffer->data(),
                           buffer->data() + buffer->data_size());
  chunk.insert(chunk.end(), buffer->data(),
               buffer->data() + buffer->data_size());
  media_codec->Reset();
  DecodeMediaFrame(media_codec.get(), &chunk[0], chunk.size(),
                   base::TimeDelta::FromMicroseconds(10000000),
                   base::TimeDelta::FromMicroseconds(9900000));

  // Simulate a seek to 5 seconds.
  media_codec->Reset();
  DecodeMediaFrame(media_codec.get(), &chunk[0], chunk.size(),
                   base::TimeDelta::FromMicroseconds(5000000),
                   base::TimeDelta::FromMicroseconds(4900000));
}

TEST(MediaCodecBridgeTest, CreateUnsupportedCodec) {
  EXPECT_EQ(NULL, AudioCodecBridge::Create(kUnknownAudioCodec));
  EXPECT_EQ(NULL, VideoCodecBridge::Create(kUnknownVideoCodec, false));
}

}  // namespace media
