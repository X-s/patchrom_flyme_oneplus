.class public Landroid/media/AudioTrack;
.super Landroid/media/PlayerBase;
.source "AudioTrack.java"

# interfaces
.implements Landroid/media/AudioRouting;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioTrack$Builder;,
        Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;,
        Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;,
        Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;,
        Landroid/media/AudioTrack$OnRoutingChangedListener;
    }
.end annotation


# static fields
.field public static final CHANNEL_COUNT_MAX:I

.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x2

.field public static final ERROR_DEAD_OBJECT:I = -0x6

.field public static final ERROR_INVALID_OPERATION:I = -0x3

.field private static final ERROR_NATIVESETUP_AUDIOSYSTEM:I = -0x10

.field private static final ERROR_NATIVESETUP_INVALIDCHANNELMASK:I = -0x11

.field private static final ERROR_NATIVESETUP_INVALIDFORMAT:I = -0x12

.field private static final ERROR_NATIVESETUP_INVALIDSTREAMTYPE:I = -0x13

.field private static final ERROR_NATIVESETUP_NATIVEINITFAILED:I = -0x14

.field public static final ERROR_WOULD_BLOCK:I = -0x7

.field private static final GAIN_MAX:F = 1.0f

.field private static final GAIN_MIN:F = 0.0f

.field public static final MODE_STATIC:I = 0x0

.field public static final MODE_STREAM:I = 0x1

.field private static final NATIVE_EVENT_MARKER:I = 0x3

.field private static final NATIVE_EVENT_NEW_POS:I = 0x4

.field public static final PLAYSTATE_PAUSED:I = 0x2

.field public static final PLAYSTATE_PLAYING:I = 0x3

.field public static final PLAYSTATE_STOPPED:I = 0x1

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_NO_STATIC_DATA:I = 0x2

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final SUCCESS:I = 0x0

.field private static final SUPPORTED_OUT_CHANNELS:I = 0x1cfc

.field private static final TAG:Ljava/lang/String; = "android.media.AudioTrack"

.field public static final WRITE_BLOCKING:I = 0x0

.field public static final WRITE_NON_BLOCKING:I = 0x1


# instance fields
.field private mAudioFormat:I

.field private mAvSyncBytesRemaining:I

.field private mAvSyncHeader:Ljava/nio/ByteBuffer;

.field private mCTSKindApps:[Ljava/lang/String;

.field private mChannelConfiguration:I

.field private mChannelCount:I

.field private mChannelIndexMask:I

.field private mChannelMask:I

.field private mDataLoadMode:I

.field private mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

.field private final mInitializationLooper:Landroid/os/Looper;

.field private mJniData:J

.field private mLakalKindApps:[Ljava/lang/String;

.field private mNativeBufferSizeInBytes:I

.field private mNativeBufferSizeInFrames:I

.field protected mNativeTrackInJavaObj:J

.field private mPlayState:I

.field private final mPlayStateLock:Ljava/lang/Object;

.field private mPreferredDevice:Landroid/media/AudioDeviceInfo;

.field private mRoutingChangeListeners:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mRoutingChangeListeners"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/media/AudioRouting$OnRoutingChangedListener;",
            "Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mSampleRate:I

.field private mSessionId:I

.field private mState:I

.field private mStreamType:I

.field private mVoipApps:[Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/media/AudioTrack;)Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    invoke-static {}, Landroid/media/AudioTrack;->native_get_FCC_8()I

    move-result v0

    sput v0, Landroid/media/AudioTrack;->CHANNEL_COUNT_MAX:I

    .line 79
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 8
    .param p1, "streamType"    # I
    .param p2, "sampleRateInHz"    # I
    .param p3, "channelConfig"    # I
    .param p4, "audioFormat"    # I
    .param p5, "bufferSizeInBytes"    # I
    .param p6, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 412
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .line 411
    invoke-direct/range {v0 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    .line 410
    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 6
    .param p1, "streamType"    # I
    .param p2, "sampleRateInHz"    # I
    .param p3, "channelConfig"    # I
    .param p4, "audioFormat"    # I
    .param p5, "bufferSizeInBytes"    # I
    .param p6, "mode"    # I
    .param p7, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 467
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 470
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    invoke-virtual {v0, p3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v2

    move-object v0, p0

    move v3, p5

    move v4, p6

    move v5, p7

    .line 467
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    .line 465
    return-void
.end method

.method constructor <init>(J)V
    .locals 9
    .param p1, "nativeTrackInJavaObj"    # J

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 609
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/media/PlayerBase;-><init>(Landroid/media/AudioAttributes;)V

    .line 190
    const/16 v1, 0x15

    new-array v1, v1, [Ljava/lang/String;

    .line 191
    const-string/jumbo v2, "com.tencent.mm"

    aput-object v2, v1, v4

    .line 192
    const-string/jumbo v2, "com.skype.rover"

    aput-object v2, v1, v5

    .line 193
    const-string/jumbo v2, "com.whatsapp"

    aput-object v2, v1, v7

    .line 194
    const-string/jumbo v2, "com.alibaba.mobileim"

    aput-object v2, v1, v8

    .line 195
    const-string/jumbo v2, "com.tencent.mobileqqi"

    aput-object v2, v1, v6

    .line 196
    const-string/jumbo v2, "com.tencent.qt.qtx"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 197
    const-string/jumbo v2, "com.xiaomi.channele"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 198
    const-string/jumbo v2, "com.google.android.talk"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 199
    const-string/jumbo v2, "cn.com.fetion"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 200
    const-string/jumbo v2, "cn.com.talker"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 201
    const-string/jumbo v2, "com.viber.voip"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    .line 202
    const-string/jumbo v2, "jp.naver.line.android"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    .line 203
    const-string/jumbo v2, "com.tencent.mobileqq"

    const/16 v3, 0xc

    aput-object v2, v1, v3

    .line 204
    const-string/jumbo v2, "yuku.luyinji.full"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    .line 205
    const-string/jumbo v2, "im.yixin"

    const/16 v3, 0xe

    aput-object v2, v1, v3

    .line 206
    const-string/jumbo v2, "com.asiainno.pengpeng"

    const/16 v3, 0xf

    aput-object v2, v1, v3

    .line 207
    const-string/jumbo v2, "com.duowan.mobile"

    const/16 v3, 0x10

    aput-object v2, v1, v3

    .line 208
    const-string/jumbo v2, "com.immomo.momo"

    const/16 v3, 0x11

    aput-object v2, v1, v3

    .line 209
    const-string/jumbo v2, "com.yy.yymeet"

    const/16 v3, 0x12

    aput-object v2, v1, v3

    .line 210
    const-string/jumbo v2, "com.yx"

    const/16 v3, 0x13

    aput-object v2, v1, v3

    .line 211
    const-string/jumbo v2, "com.facebook.katana"

    const/16 v3, 0x14

    aput-object v2, v1, v3

    .line 190
    iput-object v1, p0, Landroid/media/AudioTrack;->mVoipApps:[Ljava/lang/String;

    .line 213
    const/16 v1, 0xe

    new-array v1, v1, [Ljava/lang/String;

    .line 214
    const-string/jumbo v2, "com.lakala.android"

    aput-object v2, v1, v4

    .line 215
    const-string/jumbo v2, "com.unionpay.kalefu"

    aput-object v2, v1, v5

    .line 216
    const-string/jumbo v2, "com.huishuaka.credit"

    aput-object v2, v1, v7

    .line 217
    const-string/jumbo v2, "air.mobilepos"

    aput-object v2, v1, v8

    .line 218
    const-string/jumbo v2, "com.iboxpay.minicashbox"

    aput-object v2, v1, v6

    .line 219
    const-string/jumbo v2, "com.bill99.kuaishua"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 220
    const-string/jumbo v2, "com.iboxpay.minicashbox"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 221
    const-string/jumbo v2, "com.dcsdzficb"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 222
    const-string/jumbo v2, "com.dcyiqing"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 223
    const-string/jumbo v2, "com.dcyqzf"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 224
    const-string/jumbo v2, "com.dczhongcicb"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    .line 225
    const-string/jumbo v2, "com.epay.impay.ui.dapaizhifu"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    .line 226
    const-string/jumbo v2, "com.epay.impay.ui.jfpal"

    const/16 v3, 0xc

    aput-object v2, v1, v3

    .line 227
    const-string/jumbo v2, "remob.com"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    .line 213
    iput-object v1, p0, Landroid/media/AudioTrack;->mLakalKindApps:[Ljava/lang/String;

    .line 230
    new-array v1, v7, [Ljava/lang/String;

    .line 231
    const-string/jumbo v2, "com.android.cts.verifier"

    aput-object v2, v1, v4

    .line 232
    const-string/jumbo v2, "android.media.cts"

    aput-object v2, v1, v5

    .line 230
    iput-object v1, p0, Landroid/media/AudioTrack;->mCTSKindApps:[Ljava/lang/String;

    .line 269
    iput v4, p0, Landroid/media/AudioTrack;->mState:I

    .line 274
    iput v5, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 278
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    .line 284
    iput v4, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 285
    iput v4, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    .line 302
    iput v5, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 306
    iput v6, p0, Landroid/media/AudioTrack;->mChannelMask:I

    .line 315
    iput v8, p0, Landroid/media/AudioTrack;->mStreamType:I

    .line 320
    iput v5, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 326
    iput v6, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 330
    iput v4, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    .line 341
    iput v4, p0, Landroid/media/AudioTrack;->mSessionId:I

    .line 345
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 349
    iput v4, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 2529
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 2615
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    .line 611
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/media/AudioTrack;->mNativeTrackInJavaObj:J

    .line 612
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/media/AudioTrack;->mJniData:J

    .line 616
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-nez v0, :cond_0

    .line 617
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 619
    :cond_0
    iput-object v0, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    .line 622
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-eqz v1, :cond_1

    .line 623
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioTrack;->deferred_connect(J)V

    .line 608
    :goto_0
    return-void

    .line 625
    :cond_1
    iput v4, p0, Landroid/media/AudioTrack;->mState:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V
    .locals 23
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .param p2, "format"    # Landroid/media/AudioFormat;
    .param p3, "bufferSizeInBytes"    # I
    .param p4, "mode"    # I
    .param p5, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 512
    invoke-direct/range {p0 .. p1}, Landroid/media/PlayerBase;-><init>(Landroid/media/AudioAttributes;)V

    .line 190
    const/16 v2, 0x15

    new-array v2, v2, [Ljava/lang/String;

    .line 191
    const-string/jumbo v7, "com.tencent.mm"

    const/4 v8, 0x0

    aput-object v7, v2, v8

    .line 192
    const-string/jumbo v7, "com.skype.rover"

    const/4 v8, 0x1

    aput-object v7, v2, v8

    .line 193
    const-string/jumbo v7, "com.whatsapp"

    const/4 v8, 0x2

    aput-object v7, v2, v8

    .line 194
    const-string/jumbo v7, "com.alibaba.mobileim"

    const/4 v8, 0x3

    aput-object v7, v2, v8

    .line 195
    const-string/jumbo v7, "com.tencent.mobileqqi"

    const/4 v8, 0x4

    aput-object v7, v2, v8

    .line 196
    const-string/jumbo v7, "com.tencent.qt.qtx"

    const/4 v8, 0x5

    aput-object v7, v2, v8

    .line 197
    const-string/jumbo v7, "com.xiaomi.channele"

    const/4 v8, 0x6

    aput-object v7, v2, v8

    .line 198
    const-string/jumbo v7, "com.google.android.talk"

    const/4 v8, 0x7

    aput-object v7, v2, v8

    .line 199
    const-string/jumbo v7, "cn.com.fetion"

    const/16 v8, 0x8

    aput-object v7, v2, v8

    .line 200
    const-string/jumbo v7, "cn.com.talker"

    const/16 v8, 0x9

    aput-object v7, v2, v8

    .line 201
    const-string/jumbo v7, "com.viber.voip"

    const/16 v8, 0xa

    aput-object v7, v2, v8

    .line 202
    const-string/jumbo v7, "jp.naver.line.android"

    const/16 v8, 0xb

    aput-object v7, v2, v8

    .line 203
    const-string/jumbo v7, "com.tencent.mobileqq"

    const/16 v8, 0xc

    aput-object v7, v2, v8

    .line 204
    const-string/jumbo v7, "yuku.luyinji.full"

    const/16 v8, 0xd

    aput-object v7, v2, v8

    .line 205
    const-string/jumbo v7, "im.yixin"

    const/16 v8, 0xe

    aput-object v7, v2, v8

    .line 206
    const-string/jumbo v7, "com.asiainno.pengpeng"

    const/16 v8, 0xf

    aput-object v7, v2, v8

    .line 207
    const-string/jumbo v7, "com.duowan.mobile"

    const/16 v8, 0x10

    aput-object v7, v2, v8

    .line 208
    const-string/jumbo v7, "com.immomo.momo"

    const/16 v8, 0x11

    aput-object v7, v2, v8

    .line 209
    const-string/jumbo v7, "com.yy.yymeet"

    const/16 v8, 0x12

    aput-object v7, v2, v8

    .line 210
    const-string/jumbo v7, "com.yx"

    const/16 v8, 0x13

    aput-object v7, v2, v8

    .line 211
    const-string/jumbo v7, "com.facebook.katana"

    const/16 v8, 0x14

    aput-object v7, v2, v8

    .line 190
    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioTrack;->mVoipApps:[Ljava/lang/String;

    .line 213
    const/16 v2, 0xe

    new-array v2, v2, [Ljava/lang/String;

    .line 214
    const-string/jumbo v7, "com.lakala.android"

    const/4 v8, 0x0

    aput-object v7, v2, v8

    .line 215
    const-string/jumbo v7, "com.unionpay.kalefu"

    const/4 v8, 0x1

    aput-object v7, v2, v8

    .line 216
    const-string/jumbo v7, "com.huishuaka.credit"

    const/4 v8, 0x2

    aput-object v7, v2, v8

    .line 217
    const-string/jumbo v7, "air.mobilepos"

    const/4 v8, 0x3

    aput-object v7, v2, v8

    .line 218
    const-string/jumbo v7, "com.iboxpay.minicashbox"

    const/4 v8, 0x4

    aput-object v7, v2, v8

    .line 219
    const-string/jumbo v7, "com.bill99.kuaishua"

    const/4 v8, 0x5

    aput-object v7, v2, v8

    .line 220
    const-string/jumbo v7, "com.iboxpay.minicashbox"

    const/4 v8, 0x6

    aput-object v7, v2, v8

    .line 221
    const-string/jumbo v7, "com.dcsdzficb"

    const/4 v8, 0x7

    aput-object v7, v2, v8

    .line 222
    const-string/jumbo v7, "com.dcyiqing"

    const/16 v8, 0x8

    aput-object v7, v2, v8

    .line 223
    const-string/jumbo v7, "com.dcyqzf"

    const/16 v8, 0x9

    aput-object v7, v2, v8

    .line 224
    const-string/jumbo v7, "com.dczhongcicb"

    const/16 v8, 0xa

    aput-object v7, v2, v8

    .line 225
    const-string/jumbo v7, "com.epay.impay.ui.dapaizhifu"

    const/16 v8, 0xb

    aput-object v7, v2, v8

    .line 226
    const-string/jumbo v7, "com.epay.impay.ui.jfpal"

    const/16 v8, 0xc

    aput-object v7, v2, v8

    .line 227
    const-string/jumbo v7, "remob.com"

    const/16 v8, 0xd

    aput-object v7, v2, v8

    .line 213
    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioTrack;->mLakalKindApps:[Ljava/lang/String;

    .line 230
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 231
    const-string/jumbo v7, "com.android.cts.verifier"

    const/4 v8, 0x0

    aput-object v7, v2, v8

    .line 232
    const-string/jumbo v7, "android.media.cts"

    const/4 v8, 0x1

    aput-object v7, v2, v8

    .line 230
    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioTrack;->mCTSKindApps:[Ljava/lang/String;

    .line 269
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mState:I

    .line 274
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mPlayState:I

    .line 278
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    .line 284
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 285
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    .line 302
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 306
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mChannelMask:I

    .line 315
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mStreamType:I

    .line 320
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 326
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 330
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    .line 341
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mSessionId:I

    .line 345
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 349
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 2529
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;

    .line 2615
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    .line 515
    if-nez p2, :cond_0

    .line 516
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Illegal null AudioFormat"

    invoke-direct {v2, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 521
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v21

    .local v21, "looper":Landroid/os/Looper;
    if-nez v21, :cond_1

    .line 522
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v21

    .line 525
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v3

    .line 526
    .local v3, "rate":I
    if-nez v3, :cond_2

    .line 527
    const/4 v3, 0x0

    .line 530
    :cond_2
    const/4 v5, 0x0

    .line 531
    .local v5, "channelIndexMask":I
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_3

    .line 533
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelIndexMask()I

    move-result v5

    .line 535
    :cond_3
    const/4 v4, 0x0

    .line 536
    .local v4, "channelMask":I
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_6

    .line 538
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v4

    .line 543
    :cond_4
    :goto_0
    const/4 v6, 0x1

    .line 544
    .local v6, "encoding":I
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    .line 545
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v6

    :cond_5
    move-object/from16 v2, p0

    move/from16 v7, p4

    .line 547
    invoke-direct/range {v2 .. v7}, Landroid/media/AudioTrack;->audioParamCheck(IIIII)V

    .line 548
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mStreamType:I

    .line 550
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/media/AudioTrack;->audioBuffSizeCheck(I)V

    .line 552
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    .line 554
    if-gez p5, :cond_7

    .line 555
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid audio session ID: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 539
    .end local v6    # "encoding":I
    :cond_6
    if-nez v5, :cond_4

    .line 540
    const/16 v4, 0xc

    goto :goto_0

    .line 558
    .restart local v6    # "encoding":I
    :cond_7
    const/4 v2, 0x1

    new-array v11, v2, [I

    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/AudioTrack;->mSampleRate:I

    const/4 v7, 0x0

    aput v2, v11, v7

    .line 559
    .local v11, "sampleRate":[I
    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v17, v0

    .line 560
    .local v17, "session":[I
    const/4 v2, 0x0

    aput p5, v17, v2

    .line 563
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v22

    .line 564
    .local v22, "packageName":Ljava/lang/String;
    if-eqz v22, :cond_8

    new-instance v2, Ljava/lang/String;

    const-string/jumbo v7, "com.google.android.media.gts"

    invoke-direct {v2, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 565
    const-string/jumbo v2, "mediagts=1"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 569
    :cond_8
    new-instance v9, Ljava/lang/ref/WeakReference;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    .line 570
    move-object/from16 v0, p0

    iget v12, v0, Landroid/media/AudioTrack;->mChannelMask:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 571
    move-object/from16 v0, p0

    iget v15, v0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/AudioTrack;->mDataLoadMode:I

    move/from16 v16, v0

    const-wide/16 v18, 0x0

    move-object/from16 v8, p0

    .line 569
    invoke-direct/range {v8 .. v19}, Landroid/media/AudioTrack;->native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIIII[IJ)I

    move-result v20

    .line 572
    .local v20, "initResult":I
    if-eqz v20, :cond_9

    .line 573
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error code "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, " when initializing AudioTrack."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 574
    return-void

    .line 577
    :cond_9
    const/4 v2, 0x0

    aget v2, v11, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mSampleRate:I

    .line 578
    const/4 v2, 0x0

    aget v2, v17, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mSessionId:I

    .line 581
    const-string/jumbo v2, "android.media.AudioTrack"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "bufferSizeInBytes:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p3

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " mSampleRate:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget v8, v0, Landroid/media/AudioTrack;->mSampleRate:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    if-eqz v22, :cond_a

    new-instance v2, Ljava/lang/String;

    const-string/jumbo v7, "com.tencent.mm"

    invoke-direct {v2, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 583
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/AudioTrack;->mSampleRate:I

    const/16 v7, 0x3e80

    if-ne v2, v7, :cond_a

    .line 584
    const/16 v2, 0x5080

    move/from16 v0, p3

    if-ne v0, v2, :cond_a

    .line 585
    const-string/jumbo v2, "wechat16k=1"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 590
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v2, :cond_b

    .line 591
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mState:I

    .line 511
    :goto_2
    return-void

    .line 587
    :cond_a
    const-string/jumbo v2, "wechat16k=0"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_1

    .line 593
    :cond_b
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/AudioTrack;->mState:I

    goto :goto_2
.end method

.method private audioBuffSizeCheck(I)V
    .locals 3
    .param p1, "audioBufferSize"    # I

    .prologue
    .line 1009
    iget v1, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v1}, Landroid/media/AudioFormat;->isEncodingLinearFrames(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1010
    iget v1, p0, Landroid/media/AudioTrack;->mChannelCount:I

    iget v2, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v2}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v2

    mul-int v0, v1, v2

    .line 1014
    .local v0, "frameSizeInBytes":I
    :goto_0
    rem-int v1, p1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    if-ge p1, v1, :cond_2

    .line 1015
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Invalid audio buffer size."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1012
    .end local v0    # "frameSizeInBytes":I
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "frameSizeInBytes":I
    goto :goto_0

    .line 1018
    :cond_2
    iput p1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInBytes:I

    .line 1019
    div-int v1, p1, v0

    iput v1, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    .line 1005
    return-void
.end method

.method private audioParamCheck(IIIII)V
    .locals 6
    .param p1, "sampleRateInHz"    # I
    .param p2, "channelConfig"    # I
    .param p3, "channelIndexMask"    # I
    .param p4, "audioFormat"    # I
    .param p5, "mode"    # I

    .prologue
    const/16 v5, 0xc

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 872
    const/16 v2, 0xfa0

    if-lt p1, v2, :cond_0

    .line 873
    const v2, 0x2ee00

    if-le p1, v2, :cond_1

    .line 874
    :cond_0
    if-eqz p1, :cond_1

    .line 875
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 876
    const-string/jumbo v4, "Hz is not a supported sample rate."

    .line 875
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 878
    :cond_1
    iput p1, p0, Landroid/media/AudioTrack;->mSampleRate:I

    .line 883
    const/16 v2, 0xd

    if-ne p4, v2, :cond_2

    .line 884
    if-eq p2, v5, :cond_2

    .line 885
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 886
    const-string/jumbo v3, "ENCODING_IEC61937 must be configured as CHANNEL_OUT_STEREO"

    .line 885
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 891
    :cond_2
    iput p2, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    .line 893
    sparse-switch p2, :sswitch_data_0

    .line 906
    if-nez p2, :cond_3

    if-eqz p3, :cond_3

    .line 907
    iput v3, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 918
    :goto_0
    iput p3, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    .line 919
    iget v2, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    if-eqz v2, :cond_6

    .line 921
    sget v2, Landroid/media/AudioTrack;->CHANNEL_COUNT_MAX:I

    shl-int v2, v4, v2

    add-int/lit8 v1, v2, -0x1

    .line 922
    .local v1, "indexMask":I
    not-int v2, v1

    and-int/2addr v2, p3

    if-eqz v2, :cond_5

    .line 923
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unsupported channel index configuration "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 897
    .end local v1    # "indexMask":I
    :sswitch_0
    iput v4, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 898
    const/4 v2, 0x4

    iput v2, p0, Landroid/media/AudioTrack;->mChannelMask:I

    goto :goto_0

    .line 902
    :sswitch_1
    const/4 v2, 0x2

    iput v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 903
    iput v5, p0, Landroid/media/AudioTrack;->mChannelMask:I

    goto :goto_0

    .line 910
    :cond_3
    invoke-static {p2}, Landroid/media/AudioTrack;->isMultichannelConfigSupported(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 912
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Unsupported channel configuration."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 914
    :cond_4
    iput p2, p0, Landroid/media/AudioTrack;->mChannelMask:I

    .line 915
    invoke-static {p2}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v2

    iput v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    goto :goto_0

    .line 926
    .restart local v1    # "indexMask":I
    :cond_5
    invoke-static {p3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    .line 927
    .local v0, "channelIndexCount":I
    iget v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    if-nez v2, :cond_8

    .line 928
    iput v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    .line 936
    .end local v0    # "channelIndexCount":I
    .end local v1    # "indexMask":I
    :cond_6
    if-ne p4, v4, :cond_7

    .line 937
    const/4 p4, 0x2

    .line 940
    :cond_7
    invoke-static {p4}, Landroid/media/AudioFormat;->isPublicEncoding(I)Z

    move-result v2

    if-nez v2, :cond_9

    .line 941
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Unsupported audio encoding."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 929
    .restart local v0    # "channelIndexCount":I
    .restart local v1    # "indexMask":I
    :cond_8
    iget v2, p0, Landroid/media/AudioTrack;->mChannelCount:I

    if-eq v2, v0, :cond_6

    .line 930
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Channel count must match"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 943
    .end local v0    # "channelIndexCount":I
    .end local v1    # "indexMask":I
    :cond_9
    iput p4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 947
    if-eq p5, v4, :cond_b

    if-eqz p5, :cond_b

    .line 949
    :cond_a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid mode."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 948
    :cond_b
    if-eq p5, v4, :cond_c

    iget v2, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    invoke-static {v2}, Landroid/media/AudioFormat;->isEncodingLinearPcm(I)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 951
    :cond_c
    iput p5, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    .line 869
    return-void

    .line 893
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0xc -> :sswitch_1
    .end sparse-switch
.end method

.method private broadcastRoutingChange()V
    .locals 5

    .prologue
    .line 2715
    invoke-static {}, Landroid/media/AudioManager;->resetAudioPortGeneration()I

    .line 2716
    iget-object v4, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v4

    .line 2717
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "delegate$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;

    .line 2718
    .local v0, "delegate":Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;
    invoke-virtual {v0}, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 2719
    .local v2, "handler":Landroid/os/Handler;
    if-eqz v2, :cond_0

    .line 2720
    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2716
    .end local v0    # "delegate":Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;
    .end local v1    # "delegate$iterator":Ljava/util/Iterator;
    .end local v2    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v1    # "delegate$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v4

    .line 2714
    return-void
.end method

.method private static clampGainOrLevel(F)F
    .locals 1
    .param p0, "gainOrLevel"    # F

    .prologue
    .line 1540
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1541
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1543
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_2

    .line 1544
    const/4 p0, 0x0

    .line 1548
    :cond_1
    :goto_0
    return p0

    .line 1545
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    .line 1546
    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public static getMaxVolume()F
    .locals 1

    .prologue
    .line 1067
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public static getMinBufferSize(III)I
    .locals 5
    .param p0, "sampleRateInHz"    # I
    .param p1, "channelConfig"    # I
    .param p2, "audioFormat"    # I

    .prologue
    const/4 v4, -0x2

    .line 1361
    const/4 v0, 0x0

    .line 1362
    .local v0, "channelCount":I
    sparse-switch p1, :sswitch_data_0

    .line 1372
    invoke-static {p1}, Landroid/media/AudioTrack;->isMultichannelConfigSupported(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1373
    const-string/jumbo v2, "getMinBufferSize(): Invalid channel configuration."

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1374
    return v4

    .line 1365
    :sswitch_0
    const/4 v0, 0x1

    .line 1380
    :goto_0
    invoke-static {p2}, Landroid/media/AudioFormat;->isPublicEncoding(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1381
    const-string/jumbo v2, "getMinBufferSize(): Invalid audio format."

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1382
    return v4

    .line 1369
    :sswitch_1
    const/4 v0, 0x2

    .line 1370
    goto :goto_0

    .line 1376
    :cond_0
    invoke-static {p1}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v0

    goto :goto_0

    .line 1387
    :cond_1
    const/16 v2, 0xfa0

    if-lt p0, v2, :cond_2

    .line 1388
    const v2, 0x2ee00

    if-le p0, v2, :cond_3

    .line 1389
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getMinBufferSize(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " Hz is not a supported sample rate."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1390
    return v4

    .line 1393
    :cond_3
    invoke-static {p0, v0, p2}, Landroid/media/AudioTrack;->native_get_min_buff_size(III)I

    move-result v1

    .line 1394
    .local v1, "size":I
    if-gtz v1, :cond_4

    .line 1395
    const-string/jumbo v2, "getMinBufferSize(): error querying hardware"

    invoke-static {v2}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 1396
    const/4 v2, -0x1

    return v2

    .line 1399
    :cond_4
    return v1

    .line 1362
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_0
        0xc -> :sswitch_1
    .end sparse-switch
.end method

.method public static getMinVolume()F
    .locals 1

    .prologue
    .line 1055
    const/4 v0, 0x0

    return v0
.end method

.method public static getNativeOutputSampleRate(I)I
    .locals 1
    .param p0, "streamType"    # I

    .prologue
    .line 1334
    invoke-static {p0}, Landroid/media/AudioTrack;->native_get_output_sample_rate(I)I

    move-result v0

    return v0
.end method

.method private static isMultichannelConfigSupported(I)Z
    .locals 7
    .param p0, "channelConfig"    # I

    .prologue
    const/4 v6, 0x0

    .line 961
    and-int/lit16 v4, p0, 0x1cfc

    if-eq v4, p0, :cond_0

    .line 962
    const-string/jumbo v4, "Channel configuration features unsupported channels"

    invoke-static {v4}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 963
    return v6

    .line 965
    :cond_0
    invoke-static {p0}, Landroid/media/AudioFormat;->channelCountFromOutChannelMask(I)I

    move-result v1

    .line 966
    .local v1, "channelCount":I
    sget v4, Landroid/media/AudioTrack;->CHANNEL_COUNT_MAX:I

    if-le v1, v4, :cond_1

    .line 967
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Channel configuration contains too many channels "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 968
    const-string/jumbo v5, ">"

    .line 967
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 968
    sget v5, Landroid/media/AudioTrack;->CHANNEL_COUNT_MAX:I

    .line 967
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 969
    return v6

    .line 975
    :cond_1
    const/16 v2, 0xc

    .line 976
    .local v2, "frontPair":I
    and-int/lit8 v4, p0, 0xc

    const/16 v5, 0xc

    if-eq v4, v5, :cond_2

    .line 977
    const-string/jumbo v4, "Front channels must be present in multichannel configurations"

    invoke-static {v4}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 978
    return v6

    .line 981
    :cond_2
    const/16 v0, 0xc0

    .line 982
    .local v0, "backPair":I
    and-int/lit16 v4, p0, 0xc0

    if-eqz v4, :cond_3

    .line 983
    and-int/lit16 v4, p0, 0xc0

    const/16 v5, 0xc0

    if-eq v4, v5, :cond_3

    .line 984
    const-string/jumbo v4, "Rear channels can\'t be used independently"

    invoke-static {v4}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 985
    return v6

    .line 989
    :cond_3
    const/16 v3, 0x1800

    .line 990
    .local v3, "sidePair":I
    and-int/lit16 v4, p0, 0x1800

    if-eqz v4, :cond_4

    .line 991
    and-int/lit16 v4, p0, 0x1800

    const/16 v5, 0x1800

    if-eq v4, v5, :cond_4

    .line 992
    const-string/jumbo v4, "Side channels can\'t be used independently"

    invoke-static {v4}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 993
    return v6

    .line 995
    :cond_4
    const/4 v4, 0x1

    return v4
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 2976
    const-string/jumbo v0, "android.media.AudioTrack"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2975
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 2980
    const-string/jumbo v0, "android.media.AudioTrack"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2979
    return-void
.end method

.method private final native native_attachAuxEffect(I)I
.end method

.method private final native native_disableDeviceCallback()V
.end method

.method private final native native_enableDeviceCallback()V
.end method

.method private final native native_finalize()V
.end method

.method private final native native_flush()V
.end method

.method private final native native_getRoutedDeviceId()I
.end method

.method private static native native_get_FCC_8()I
.end method

.method private final native native_get_buffer_capacity_frames()I
.end method

.method private final native native_get_buffer_size_frames()I
.end method

.method private final native native_get_latency()I
.end method

.method private final native native_get_marker_pos()I
.end method

.method private static final native native_get_min_buff_size(III)I
.end method

.method private static final native native_get_output_sample_rate(I)I
.end method

.method private final native native_get_playback_params()Landroid/media/PlaybackParams;
.end method

.method private final native native_get_playback_rate()I
.end method

.method private final native native_get_pos_update_period()I
.end method

.method private final native native_get_position()I
.end method

.method private final native native_get_timestamp([J)I
.end method

.method private final native native_get_underrun_count()I
.end method

.method private final native native_pause()V
.end method

.method private final native native_reload_static()I
.end method

.method private final native native_setAuxEffectSendLevel(F)I
.end method

.method private final native native_setOutputDevice(I)Z
.end method

.method private final native native_setVolume(FF)V
.end method

.method private final native native_set_buffer_size_frames(I)I
.end method

.method private final native native_set_loop(III)I
.end method

.method private final native native_set_marker_pos(I)I
.end method

.method private final native native_set_playback_params(Landroid/media/PlaybackParams;)V
.end method

.method private final native native_set_playback_rate(I)I
.end method

.method private final native native_set_pos_update_period(I)I
.end method

.method private final native native_set_position(I)I
.end method

.method private final native native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIIII[IJ)I
.end method

.method private final native native_start()V
.end method

.method private final native native_stop()V
.end method

.method private final native native_write_byte([BIIIZ)I
.end method

.method private final native native_write_float([FIIIZ)I
.end method

.method private final native native_write_native_bytes(Ljava/lang/Object;IIIZ)I
.end method

.method private final native native_write_short([SIIIZ)I
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 5
    .param p0, "audiotrack_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2862
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "audiotrack_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioTrack;

    .line 2863
    .local v3, "track":Landroid/media/AudioTrack;
    if-nez v3, :cond_0

    .line 2864
    return-void

    .line 2867
    :cond_0
    const/16 v4, 0x3e8

    if-ne p1, v4, :cond_1

    .line 2868
    invoke-direct {v3}, Landroid/media/AudioTrack;->broadcastRoutingChange()V

    .line 2869
    return-void

    .line 2871
    :cond_1
    iget-object v0, v3, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    .line 2872
    .local v0, "delegate":Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;
    if-eqz v0, :cond_2

    .line 2873
    invoke-virtual {v0}, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 2874
    .local v1, "handler":Landroid/os/Handler;
    if-eqz v1, :cond_2

    .line 2875
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2876
    .local v2, "m":Landroid/os/Message;
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2860
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "m":Landroid/os/Message;
    :cond_2
    return-void
.end method

.method private testDisableNativeRoutingCallbacksLocked()V
    .locals 1

    .prologue
    .line 2600
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2601
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_disableDeviceCallback()V

    .line 2599
    :cond_0
    return-void
.end method

.method private testEnableNativeRoutingCallbacksLocked()V
    .locals 1

    .prologue
    .line 2591
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2592
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_enableDeviceCallback()V

    .line 2590
    :cond_0
    return-void
.end method


# virtual methods
.method public addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/media/AudioRouting$OnRoutingChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 2629
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 2630
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .end local p2    # "handler":Landroid/os/Handler;
    :cond_0
    :goto_0
    monitor-exit v1

    .line 2628
    return-void

    .line 2631
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_1
    :try_start_1
    invoke-direct {p0}, Landroid/media/AudioTrack;->testEnableNativeRoutingCallbacksLocked()V

    .line 2632
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    .line 2633
    new-instance v2, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;

    .line 2634
    if-eqz p2, :cond_2

    .line 2633
    .end local p2    # "handler":Landroid/os/Handler;
    :goto_1
    invoke-direct {v2, p0, p0, p1, p2}, Landroid/media/AudioTrack$NativeRoutingEventHandlerDelegate;-><init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    .line 2632
    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2629
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 2634
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_2
    :try_start_2
    new-instance p2, Landroid/os/Handler;

    .end local p2    # "handler":Landroid/os/Handler;
    iget-object v3, p0, Landroid/media/AudioTrack;->mInitializationLooper:Landroid/os/Looper;

    invoke-direct {p2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public addOnRoutingChangedListener(Landroid/media/AudioTrack$OnRoutingChangedListener;Landroid/os/Handler;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/AudioTrack$OnRoutingChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2696
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioTrack;->addOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;Landroid/os/Handler;)V

    .line 2695
    return-void
.end method

.method public attachAuxEffect(I)I
    .locals 1
    .param p1, "effectId"    # I

    .prologue
    .line 2488
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    .line 2489
    const/4 v0, -0x3

    return v0

    .line 2491
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_attachAuxEffect(I)I

    move-result v0

    return v0
.end method

.method deferred_connect(J)V
    .locals 13
    .param p1, "nativeTrackInJavaObj"    # J

    .prologue
    .line 633
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 636
    const/4 v0, 0x1

    new-array v9, v0, [I

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v0, v9, v1

    .line 637
    .local v9, "session":[I
    const/4 v0, 0x1

    new-array v3, v0, [I

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v0, v3, v1

    .line 638
    .local v3, "rates":[I
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 639
    const/4 v2, 0x0

    .line 641
    const/4 v4, 0x0

    .line 642
    const/4 v5, 0x0

    .line 643
    const/4 v6, 0x0

    .line 644
    const/4 v7, 0x0

    .line 645
    const/4 v8, 0x0

    move-object v0, p0

    move-wide v10, p1

    .line 638
    invoke-direct/range {v0 .. v11}, Landroid/media/AudioTrack;->native_setup(Ljava/lang/Object;Ljava/lang/Object;[IIIIII[IJ)I

    move-result v12

    .line 648
    .local v12, "initResult":I
    if-eqz v12, :cond_0

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Error code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " when initializing AudioTrack."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioTrack;->loge(Ljava/lang/String;)V

    .line 650
    return-void

    .line 653
    :cond_0
    const/4 v0, 0x0

    aget v0, v9, v0

    iput v0, p0, Landroid/media/AudioTrack;->mSessionId:I

    .line 655
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioTrack;->mState:I

    .line 632
    .end local v3    # "rates":[I
    .end local v9    # "session":[I
    .end local v12    # "initResult":I
    :cond_1
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 1041
    invoke-virtual {p0}, Landroid/media/AudioTrack;->baseRelease()V

    .line 1042
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_finalize()V

    .line 1040
    return-void
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 1936
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1938
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_flush()V

    .line 1939
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 1940
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 1935
    :cond_0
    return-void
.end method

.method public getAudioFormat()I
    .locals 1

    .prologue
    .line 1105
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 1409
    iget v0, p0, Landroid/media/AudioTrack;->mSessionId:I

    return v0
.end method

.method public getBufferCapacityInFrames()I
    .locals 1

    .prologue
    .line 1255
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_buffer_capacity_frames()I

    move-result v0

    return v0
.end method

.method public getBufferSizeInFrames()I
    .locals 1

    .prologue
    .line 1199
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_buffer_size_frames()I

    move-result v0

    return v0
.end method

.method public getChannelConfiguration()I
    .locals 1

    .prologue
    .line 1129
    iget v0, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    return v0
.end method

.method public getChannelCount()I
    .locals 1

    .prologue
    .line 1154
    iget v0, p0, Landroid/media/AudioTrack;->mChannelCount:I

    return v0
.end method

.method public getFormat()Landroid/media/AudioFormat;
    .locals 3

    .prologue
    .line 1138
    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 1139
    iget v2, p0, Landroid/media/AudioTrack;->mSampleRate:I

    .line 1138
    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    .line 1140
    iget v2, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 1138
    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 1141
    .local v0, "builder":Landroid/media/AudioFormat$Builder;
    iget v1, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    if-eqz v1, :cond_0

    .line 1142
    iget v1, p0, Landroid/media/AudioTrack;->mChannelConfiguration:I

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 1144
    :cond_0
    iget v1, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    if-eqz v1, :cond_1

    .line 1145
    iget v1, p0, Landroid/media/AudioTrack;->mChannelIndexMask:I

    invoke-virtual {v0, v1}, Landroid/media/AudioFormat$Builder;->setChannelIndexMask(I)Landroid/media/AudioFormat$Builder;

    .line 1147
    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    return-object v1
.end method

.method public getLatency()I
    .locals 1

    .prologue
    .line 1310
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_latency()I

    move-result v0

    return v0
.end method

.method protected getNativeFrameCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1266
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_buffer_capacity_frames()I

    move-result v0

    return v0
.end method

.method public getNotificationMarkerPosition()I
    .locals 1

    .prologue
    .line 1275
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_marker_pos()I

    move-result v0

    return v0
.end method

.method public getPlayState()I
    .locals 2

    .prologue
    .line 1176
    iget-object v0, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1177
    :try_start_0
    iget v1, p0, Landroid/media/AudioTrack;->mPlayState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 1176
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public getPlaybackHeadPosition()I
    .locals 1

    .prologue
    .line 1298
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_position()I

    move-result v0

    return v0
.end method

.method public getPlaybackParams()Landroid/media/PlaybackParams;
    .locals 1

    .prologue
    .line 1097
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_playback_params()Landroid/media/PlaybackParams;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackRate()I
    .locals 1

    .prologue
    .line 1087
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_playback_rate()I

    move-result v0

    return v0
.end method

.method public getPositionNotificationPeriod()I
    .locals 1

    .prologue
    .line 1283
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_pos_update_period()I

    move-result v0

    return v0
.end method

.method public getPreferredDevice()Landroid/media/AudioDeviceInfo;
    .locals 1

    .prologue
    .line 2561
    monitor-enter p0

    .line 2562
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 2561
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getRoutedDevice()Landroid/media/AudioDeviceInfo;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2573
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_getRoutedDeviceId()I

    move-result v0

    .line 2574
    .local v0, "deviceId":I
    if-nez v0, :cond_0

    .line 2575
    return-object v4

    .line 2578
    :cond_0
    const/4 v3, 0x2

    invoke-static {v3}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    .line 2579
    .local v1, "devices":[Landroid/media/AudioDeviceInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 2580
    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 2581
    aget-object v3, v1, v2

    return-object v3

    .line 2579
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2584
    :cond_2
    return-object v4
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 1080
    iget v0, p0, Landroid/media/AudioTrack;->mSampleRate:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 1166
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    return v0
.end method

.method public getStreamType()I
    .locals 1

    .prologue
    .line 1116
    iget v0, p0, Landroid/media/AudioTrack;->mStreamType:I

    return v0
.end method

.method public getTimestamp(Landroid/media/AudioTimestamp;)Z
    .locals 5
    .param p1, "timestamp"    # Landroid/media/AudioTimestamp;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1454
    if-nez p1, :cond_0

    .line 1455
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1458
    :cond_0
    const/4 v2, 0x2

    new-array v0, v2, [J

    .line 1459
    .local v0, "longArray":[J
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_get_timestamp([J)I

    move-result v1

    .line 1460
    .local v1, "ret":I
    if-eqz v1, :cond_1

    .line 1461
    return v3

    .line 1463
    :cond_1
    aget-wide v2, v0, v3

    iput-wide v2, p1, Landroid/media/AudioTimestamp;->framePosition:J

    .line 1464
    aget-wide v2, v0, v4

    iput-wide v2, p1, Landroid/media/AudioTimestamp;->nanoTime:J

    .line 1465
    return v4
.end method

.method public getTimestampWithStatus(Landroid/media/AudioTimestamp;)I
    .locals 4
    .param p1, "timestamp"    # Landroid/media/AudioTimestamp;

    .prologue
    .line 1496
    if-nez p1, :cond_0

    .line 1497
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 1500
    :cond_0
    const/4 v2, 0x2

    new-array v0, v2, [J

    .line 1501
    .local v0, "longArray":[J
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_get_timestamp([J)I

    move-result v1

    .line 1502
    .local v1, "ret":I
    const/4 v2, 0x0

    aget-wide v2, v0, v2

    iput-wide v2, p1, Landroid/media/AudioTimestamp;->framePosition:J

    .line 1503
    const/4 v2, 0x1

    aget-wide v2, v0, v2

    iput-wide v2, p1, Landroid/media/AudioTimestamp;->nanoTime:J

    .line 1504
    return v1
.end method

.method public getUnderrunCount()I
    .locals 1

    .prologue
    .line 1327
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_get_underrun_count()I

    move-result v0

    return v0
.end method

.method public final native native_release()V
.end method

.method public pause()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1907
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1908
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "pause() called on uninitialized AudioTrack."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1913
    :cond_0
    iget-object v1, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1914
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_pause()V

    .line 1915
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioTrack;->mPlayState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 1906
    return-void

    .line 1913
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public play()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 1803
    iget v3, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 1804
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "play() called on uninitialized AudioTrack."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1806
    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->baseStart()V

    .line 1807
    iget-object v4, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1809
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1810
    .local v2, "packageName":Ljava/lang/String;
    const-string/jumbo v3, "android.media.AudioTrack"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "play() packageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    const/4 v1, 0x0

    .line 1812
    .local v1, "isVoipApp":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/media/AudioTrack;->mVoipApps:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 1813
    if-eqz v2, :cond_5

    iget-object v3, p0, Landroid/media/AudioTrack;->mVoipApps:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1814
    const/4 v1, 0x1

    .line 1818
    :cond_1
    if-eqz v1, :cond_6

    .line 1819
    const-string/jumbo v3, "isVoipApp=1"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1824
    :goto_1
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Landroid/media/AudioTrack;->mLakalKindApps:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 1825
    if-eqz v2, :cond_7

    iget-object v3, p0, Landroid/media/AudioTrack;->mLakalKindApps:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1826
    const-string/jumbo v3, "isLakalKindApp=1"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1834
    :cond_2
    const/4 v0, 0x0

    :goto_3
    iget-object v3, p0, Landroid/media/AudioTrack;->mCTSKindApps:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 1835
    if-eqz v2, :cond_8

    iget-object v3, p0, Landroid/media/AudioTrack;->mCTSKindApps:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1836
    iget v3, p0, Landroid/media/AudioTrack;->mSampleRate:I

    const v5, 0xac44

    if-eq v3, v5, :cond_3

    iget v3, p0, Landroid/media/AudioTrack;->mSampleRate:I

    const v5, 0xbb80

    if-ne v3, v5, :cond_8

    .line 1837
    :cond_3
    const-string/jumbo v3, "mediacts=1"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1842
    :cond_4
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_start()V

    .line 1843
    const/4 v3, 0x3

    iput v3, p0, Landroid/media/AudioTrack;->mPlayState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 1802
    return-void

    .line 1812
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1821
    :cond_6
    :try_start_1
    const-string/jumbo v3, "isVoipApp=0"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1807
    .end local v0    # "i":I
    .end local v1    # "isVoipApp":Z
    .end local v2    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 1824
    .restart local v0    # "i":I
    .restart local v1    # "isVoipApp":Z
    .restart local v2    # "packageName":Ljava/lang/String;
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1834
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method playerSetAuxEffectSendLevel(F)I
    .locals 2
    .param p1, "level"    # F

    .prologue
    const/4 v1, 0x0

    .line 2521
    invoke-static {p1}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    move-result p1

    .line 2522
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_setAuxEffectSendLevel(F)I

    move-result v0

    .line 2523
    .local v0, "err":I
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method playerSetVolume(FF)V
    .locals 0
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    .prologue
    .line 1579
    invoke-static {p1}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    move-result p1

    .line 1580
    invoke-static {p2}, Landroid/media/AudioTrack;->clampGainOrLevel(F)F

    move-result p2

    .line 1582
    invoke-direct {p0, p1, p2}, Landroid/media/AudioTrack;->native_setVolume(FF)V

    .line 1578
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 1030
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1034
    :goto_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->baseRelease()V

    .line 1035
    invoke-virtual {p0}, Landroid/media/AudioTrack;->native_release()V

    .line 1036
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioTrack;->mState:I

    .line 1026
    return-void

    .line 1031
    :catch_0
    move-exception v0

    .local v0, "ise":Ljava/lang/IllegalStateException;
    goto :goto_0
.end method

.method public reloadStaticData()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2460
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eq v0, v1, :cond_1

    .line 2461
    :cond_0
    const/4 v0, -0x3

    return v0

    .line 2463
    :cond_1
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_reload_static()I

    move-result v0

    return v0
.end method

.method public removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/media/AudioRouting$OnRoutingChangedListener;

    .prologue
    .line 2647
    iget-object v1, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 2648
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2649
    iget-object v0, p0, Landroid/media/AudioTrack;->mRoutingChangeListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2651
    :cond_0
    invoke-direct {p0}, Landroid/media/AudioTrack;->testDisableNativeRoutingCallbacksLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 2646
    return-void

    .line 2647
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeOnRoutingChangedListener(Landroid/media/AudioTrack$OnRoutingChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/AudioTrack$OnRoutingChangedListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2708
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->removeOnRoutingChangedListener(Landroid/media/AudioRouting$OnRoutingChangedListener;)V

    .line 2707
    return-void
.end method

.method public setAuxEffectSendLevel(F)I
    .locals 1
    .param p1, "level"    # F

    .prologue
    .line 2513
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    .line 2514
    const/4 v0, -0x3

    return v0

    .line 2516
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->baseSetAuxEffectSendLevel(F)I

    move-result v0

    return v0
.end method

.method public setBufferSizeInFrames(I)I
    .locals 1
    .param p1, "bufferSizeInFrames"    # I

    .prologue
    .line 1226
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_1

    .line 1227
    :cond_0
    const/4 v0, -0x3

    return v0

    .line 1229
    :cond_1
    if-gez p1, :cond_2

    .line 1230
    const/4 v0, -0x2

    return v0

    .line 1232
    :cond_2
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_buffer_size_frames(I)I

    move-result v0

    return v0
.end method

.method public setLoopPoints(III)I
    .locals 2
    .param p1, "startInFrames"    # I
    .param p2, "endInFrames"    # I
    .param p3, "loopCount"    # I

    .prologue
    .line 1748
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_1

    .line 1750
    :cond_0
    const/4 v0, -0x3

    return v0

    .line 1749
    :cond_1
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1752
    if-nez p3, :cond_3

    .line 1758
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioTrack;->native_set_loop(III)I

    move-result v0

    return v0

    .line 1754
    :cond_3
    if-ltz p1, :cond_4

    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-lt p1, v0, :cond_5

    .line 1756
    :cond_4
    :goto_0
    const/4 v0, -0x2

    return v0

    .line 1755
    :cond_5
    if-ge p1, p2, :cond_4

    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-le p2, v0, :cond_2

    goto :goto_0
.end method

.method public setNotificationMarkerPosition(I)I
    .locals 1
    .param p1, "markerInFrames"    # I

    .prologue
    .line 1666
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    .line 1667
    const/4 v0, -0x3

    return v0

    .line 1669
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_marker_pos(I)I

    move-result v0

    return v0
.end method

.method public setPlaybackHeadPosition(I)I
    .locals 2
    .param p1, "positionInFrames"    # I

    .prologue
    .line 1706
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_1

    .line 1708
    :cond_0
    const/4 v0, -0x3

    return v0

    .line 1707
    :cond_1
    invoke-virtual {p0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1710
    if-ltz p1, :cond_2

    iget v0, p0, Landroid/media/AudioTrack;->mNativeBufferSizeInFrames:I

    if-le p1, v0, :cond_3

    .line 1711
    :cond_2
    const/4 v0, -0x2

    return v0

    .line 1713
    :cond_3
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_position(I)I

    move-result v0

    return v0
.end method

.method public setPlaybackParams(Landroid/media/PlaybackParams;)V
    .locals 2
    .param p1, "params"    # Landroid/media/PlaybackParams;

    .prologue
    .line 1649
    if-nez p1, :cond_0

    .line 1650
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "params is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1652
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_playback_params(Landroid/media/PlaybackParams;)V

    .line 1648
    return-void
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;

    .prologue
    .line 1518
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioTrack;->setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    .line 1517
    return-void
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v0, 0x0

    .line 1531
    if-eqz p1, :cond_0

    .line 1532
    new-instance v0, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    invoke-direct {v0, p0, p0, p1, p2}, Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;-><init>(Landroid/media/AudioTrack;Landroid/media/AudioTrack;Landroid/media/AudioTrack$OnPlaybackPositionUpdateListener;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    .line 1530
    :goto_0
    return-void

    .line 1534
    :cond_0
    iput-object v0, p0, Landroid/media/AudioTrack;->mEventHandlerDelegate:Landroid/media/AudioTrack$NativePositionEventHandlerDelegate;

    goto :goto_0
.end method

.method public setPlaybackRate(I)I
    .locals 2
    .param p1, "sampleRateInHz"    # I

    .prologue
    .line 1624
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1625
    const/4 v0, -0x3

    return v0

    .line 1627
    :cond_0
    if-gtz p1, :cond_1

    .line 1628
    const/4 v0, -0x2

    return v0

    .line 1630
    :cond_1
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_playback_rate(I)I

    move-result v0

    return v0
.end method

.method public setPositionNotificationPeriod(I)I
    .locals 1
    .param p1, "periodInFrames"    # I

    .prologue
    .line 1680
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    .line 1681
    const/4 v0, -0x3

    return v0

    .line 1683
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioTrack;->native_set_pos_update_period(I)I

    move-result v0

    return v0
.end method

.method public setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z
    .locals 3
    .param p1, "deviceInfo"    # Landroid/media/AudioDeviceInfo;

    .prologue
    const/4 v0, 0x0

    .line 2542
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->isSink()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2545
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/media/AudioDeviceInfo;->getId()I

    move-result v0

    .line 2546
    .local v0, "preferredDeviceId":I
    :cond_1
    invoke-direct {p0, v0}, Landroid/media/AudioTrack;->native_setOutputDevice(I)Z

    move-result v1

    .line 2547
    .local v1, "status":Z
    if-eqz v1, :cond_2

    .line 2548
    monitor-enter p0

    .line 2549
    :try_start_0
    iput-object p1, p0, Landroid/media/AudioTrack;->mPreferredDevice:Landroid/media/AudioDeviceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2552
    :cond_2
    return v1

    .line 2543
    .end local v0    # "preferredDeviceId":I
    .end local v1    # "status":Z
    :cond_3
    return v0

    .line 2548
    .restart local v0    # "preferredDeviceId":I
    .restart local v1    # "status":Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected setState(I)V
    .locals 0
    .param p1, "state"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1770
    iput p1, p0, Landroid/media/AudioTrack;->mState:I

    .line 1769
    return-void
.end method

.method public setStereoVolume(FF)I
    .locals 2
    .param p1, "leftGain"    # F
    .param p2, "rightGain"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1569
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    .line 1570
    const/4 v0, -0x3

    return v0

    .line 1573
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioTrack;->baseSetVolume(FF)V

    .line 1574
    return v1
.end method

.method public setVolume(F)I
    .locals 1
    .param p1, "gain"    # F

    .prologue
    .line 1601
    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    move-result v0

    return v0
.end method

.method public stop()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1857
    iget v2, p0, Landroid/media/AudioTrack;->mState:I

    if-eq v2, v3, :cond_0

    .line 1858
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "stop() called on uninitialized AudioTrack."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1862
    :cond_0
    iget-object v3, p0, Landroid/media/AudioTrack;->mPlayStateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1864
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1865
    .local v1, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/media/AudioTrack;->mLakalKindApps:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1866
    if-eqz v1, :cond_4

    iget-object v2, p0, Landroid/media/AudioTrack;->mLakalKindApps:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1867
    const-string/jumbo v2, "isLakalKindApp=0"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1876
    :cond_1
    const-string/jumbo v2, "android.media.AudioTrack"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stop() packageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "mSampleRate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/media/AudioTrack;->mSampleRate:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1877
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Landroid/media/AudioTrack;->mCTSKindApps:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 1878
    if-eqz v1, :cond_5

    iget-object v2, p0, Landroid/media/AudioTrack;->mCTSKindApps:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1879
    const-string/jumbo v2, "mediacts=0"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1887
    :cond_2
    if-eqz v1, :cond_3

    new-instance v2, Ljava/lang/String;

    const-string/jumbo v4, "com.google.android.media.gts"

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1888
    const-string/jumbo v2, "mediagts=0"

    invoke-static {v2}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1891
    :cond_3
    invoke-direct {p0}, Landroid/media/AudioTrack;->native_stop()V

    .line 1892
    const/4 v2, 0x1

    iput v2, p0, Landroid/media/AudioTrack;->mPlayState:I

    .line 1893
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 1894
    const/4 v2, 0x0

    iput v2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 1856
    return-void

    .line 1865
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1877
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1862
    .end local v0    # "i":I
    .end local v1    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public write(Ljava/nio/ByteBuffer;II)I
    .locals 8
    .param p1, "audioData"    # Ljava/nio/ByteBuffer;
    .param p2, "sizeInBytes"    # I
    .param p3, "writeMode"    # I

    .prologue
    const/4 v3, -0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 2300
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    .line 2301
    const-string/jumbo v0, "android.media.AudioTrack"

    const-string/jumbo v1, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2302
    const/4 v0, -0x3

    return v0

    .line 2305
    :cond_0
    if-eqz p3, :cond_1

    if-eq p3, v7, :cond_1

    .line 2306
    const-string/jumbo v0, "android.media.AudioTrack"

    const-string/jumbo v1, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    return v3

    .line 2310
    :cond_1
    if-eqz p1, :cond_2

    if-gez p2, :cond_3

    .line 2311
    :cond_2
    const-string/jumbo v0, "android.media.AudioTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AudioTrack.write() called with invalid size ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2312
    return v3

    .line 2310
    :cond_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-gt p2, v0, :cond_2

    .line 2315
    const/4 v6, 0x0

    .line 2316
    .local v6, "ret":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2318
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iget v4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 2319
    if-nez p3, :cond_4

    move v5, v7

    :cond_4
    move-object v0, p0

    move-object v1, p1

    move v3, p2

    .line 2317
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;->native_write_native_bytes(Ljava/lang/Object;IIIZ)I

    move-result v6

    .line 2327
    :goto_0
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v0, :cond_5

    .line 2328
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 2329
    if-lez v6, :cond_5

    .line 2331
    iput v7, p0, Landroid/media/AudioTrack;->mState:I

    .line 2334
    :cond_5
    if-lez v6, :cond_6

    .line 2335
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v6

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2338
    :cond_6
    return v6

    .line 2321
    :cond_7
    invoke-static {p1}, Ljava/nio/NioUtils;->unsafeArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    .line 2322
    invoke-static {p1}, Ljava/nio/NioUtils;->unsafeArrayOffset(Ljava/nio/ByteBuffer;)I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    .line 2323
    iget v4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 2324
    if-nez p3, :cond_8

    move v5, v7

    :cond_8
    move-object v0, p0

    move v3, p2

    .line 2321
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;->native_write_byte([BIIIZ)I

    move-result v6

    goto :goto_0
.end method

.method public write(Ljava/nio/ByteBuffer;IIJ)I
    .locals 8
    .param p1, "audioData"    # Ljava/nio/ByteBuffer;
    .param p2, "sizeInBytes"    # I
    .param p3, "writeMode"    # I
    .param p4, "timestamp"    # J

    .prologue
    const/4 v3, 0x1

    const/4 v7, -0x2

    const/4 v6, -0x3

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 2373
    iget v2, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v2, :cond_0

    .line 2374
    const-string/jumbo v2, "android.media.AudioTrack"

    const-string/jumbo v3, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    return v6

    .line 2378
    :cond_0
    if-eqz p3, :cond_1

    if-eq p3, v3, :cond_1

    .line 2379
    const-string/jumbo v2, "android.media.AudioTrack"

    const-string/jumbo v3, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2380
    return v7

    .line 2383
    :cond_1
    iget v2, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-eq v2, v3, :cond_2

    .line 2384
    const-string/jumbo v2, "android.media.AudioTrack"

    const-string/jumbo v3, "AudioTrack.write() with timestamp called for non-streaming mode track"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2385
    return v6

    .line 2388
    :cond_2
    iget-object v2, p0, Landroid/media/AudioTrack;->mAttributes:Landroid/media/AudioAttributes;

    invoke-virtual {v2}, Landroid/media/AudioAttributes;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_3

    .line 2389
    const-string/jumbo v2, "android.media.AudioTrack"

    const-string/jumbo v3, "AudioTrack.write() called on a regular AudioTrack. Ignoring pts..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2390
    invoke-virtual {p0, p1, p2, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v2

    return v2

    .line 2393
    :cond_3
    if-eqz p1, :cond_4

    if-gez p2, :cond_5

    .line 2394
    :cond_4
    const-string/jumbo v2, "android.media.AudioTrack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "AudioTrack.write() called with invalid size ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") value"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2395
    return v7

    .line 2393
    :cond_5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-gt p2, v2, :cond_4

    .line 2399
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_6

    .line 2400
    const/16 v2, 0x10

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 2401
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2402
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    const v3, 0x55550001

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2403
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2404
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p4, p5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 2405
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2406
    iput p2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 2410
    :cond_6
    const/4 v0, 0x0

    .line 2411
    .local v0, "ret":I
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-eqz v2, :cond_8

    .line 2412
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {p0, v2, v3, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    .line 2413
    if-gez v0, :cond_7

    .line 2414
    const-string/jumbo v2, "android.media.AudioTrack"

    const-string/jumbo v3, "AudioTrack.write() could not write timestamp header!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2415
    iput-object v5, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 2416
    iput v4, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 2417
    return v0

    .line 2419
    :cond_7
    iget-object v2, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lez v2, :cond_8

    .line 2420
    const-string/jumbo v2, "android.media.AudioTrack"

    const-string/jumbo v3, "AudioTrack.write() partial timestamp header written."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2421
    return v4

    .line 2426
    :cond_8
    iget v2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2427
    .local v1, "sizeToWrite":I
    invoke-virtual {p0, p1, v1, p3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    .line 2428
    if-gez v0, :cond_9

    .line 2429
    const-string/jumbo v2, "android.media.AudioTrack"

    const-string/jumbo v3, "AudioTrack.write() could not write audio data!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2430
    iput-object v5, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 2431
    iput v4, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 2432
    return v0

    .line 2435
    :cond_9
    iget v2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    sub-int/2addr v2, v0

    iput v2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    .line 2436
    iget v2, p0, Landroid/media/AudioTrack;->mAvSyncBytesRemaining:I

    if-nez v2, :cond_a

    .line 2437
    iput-object v5, p0, Landroid/media/AudioTrack;->mAvSyncHeader:Ljava/nio/ByteBuffer;

    .line 2440
    :cond_a
    return v0
.end method

.method public write([BII)I
    .locals 1
    .param p1, "audioData"    # [B
    .param p2, "offsetInBytes"    # I
    .param p3, "sizeInBytes"    # I

    .prologue
    .line 1981
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioTrack;->write([BIII)I

    move-result v0

    return v0
.end method

.method public write([BIII)I
    .locals 8
    .param p1, "audioData"    # [B
    .param p2, "offsetInBytes"    # I
    .param p3, "sizeInBytes"    # I
    .param p4, "writeMode"    # I

    .prologue
    const/4 v2, -0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 2029
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 2030
    :cond_0
    const/4 v0, -0x3

    return v0

    .line 2033
    :cond_1
    if-eqz p4, :cond_2

    if-eq p4, v7, :cond_2

    .line 2034
    const-string/jumbo v0, "android.media.AudioTrack"

    const-string/jumbo v1, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    return v2

    .line 2038
    :cond_2
    if-eqz p1, :cond_3

    if-gez p2, :cond_4

    .line 2041
    :cond_3
    return v2

    .line 2038
    :cond_4
    if-ltz p3, :cond_3

    .line 2039
    add-int v0, p2, p3

    if-ltz v0, :cond_3

    .line 2040
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_3

    .line 2044
    iget v4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 2045
    if-nez p4, :cond_5

    move v5, v7

    :cond_5
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 2044
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;->native_write_byte([BIIIZ)I

    move-result v6

    .line 2047
    .local v6, "ret":I
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v0, :cond_6

    .line 2048
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 2049
    if-lez v6, :cond_6

    .line 2051
    iput v7, p0, Landroid/media/AudioTrack;->mState:I

    .line 2054
    :cond_6
    return v6
.end method

.method public write([FIII)I
    .locals 8
    .param p1, "audioData"    # [F
    .param p2, "offsetInFloats"    # I
    .param p3, "sizeInFloats"    # I
    .param p4, "writeMode"    # I

    .prologue
    const/4 v3, -0x2

    const/4 v2, -0x3

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 2219
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-nez v0, :cond_0

    .line 2220
    const-string/jumbo v0, "android.media.AudioTrack"

    const-string/jumbo v1, "AudioTrack.write() called in invalid state STATE_UNINITIALIZED"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2221
    return v2

    .line 2224
    :cond_0
    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 2225
    const-string/jumbo v0, "android.media.AudioTrack"

    const-string/jumbo v1, "AudioTrack.write(float[] ...) requires format ENCODING_PCM_FLOAT"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    return v2

    .line 2229
    :cond_1
    if-eqz p4, :cond_2

    if-eq p4, v7, :cond_2

    .line 2230
    const-string/jumbo v0, "android.media.AudioTrack"

    const-string/jumbo v1, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    return v3

    .line 2234
    :cond_2
    if-eqz p1, :cond_3

    if-gez p2, :cond_4

    .line 2237
    :cond_3
    const-string/jumbo v0, "android.media.AudioTrack"

    const-string/jumbo v1, "AudioTrack.write() called with invalid array, offset, or size"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2238
    return v3

    .line 2234
    :cond_4
    if-ltz p3, :cond_3

    .line 2235
    add-int v0, p2, p3

    if-ltz v0, :cond_3

    .line 2236
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_3

    .line 2241
    iget v4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 2242
    if-nez p4, :cond_5

    move v5, v7

    :cond_5
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 2241
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;->native_write_float([FIIIZ)I

    move-result v6

    .line 2244
    .local v6, "ret":I
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v0, :cond_6

    .line 2245
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 2246
    if-lez v6, :cond_6

    .line 2248
    iput v7, p0, Landroid/media/AudioTrack;->mState:I

    .line 2251
    :cond_6
    return v6
.end method

.method public write([SII)I
    .locals 1
    .param p1, "audioData"    # [S
    .param p2, "offsetInShorts"    # I
    .param p3, "sizeInShorts"    # I

    .prologue
    .line 2092
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/media/AudioTrack;->write([SIII)I

    move-result v0

    return v0
.end method

.method public write([SIII)I
    .locals 8
    .param p1, "audioData"    # [S
    .param p2, "offsetInShorts"    # I
    .param p3, "sizeInShorts"    # I
    .param p4, "writeMode"    # I

    .prologue
    const/4 v2, -0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 2138
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 2139
    :cond_0
    const/4 v0, -0x3

    return v0

    .line 2142
    :cond_1
    if-eqz p4, :cond_2

    if-eq p4, v7, :cond_2

    .line 2143
    const-string/jumbo v0, "android.media.AudioTrack"

    const-string/jumbo v1, "AudioTrack.write() called with invalid blocking mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    return v2

    .line 2147
    :cond_2
    if-eqz p1, :cond_3

    if-gez p2, :cond_4

    .line 2150
    :cond_3
    return v2

    .line 2147
    :cond_4
    if-ltz p3, :cond_3

    .line 2148
    add-int v0, p2, p3

    if-ltz v0, :cond_3

    .line 2149
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_3

    .line 2153
    iget v4, p0, Landroid/media/AudioTrack;->mAudioFormat:I

    .line 2154
    if-nez p4, :cond_5

    move v5, v7

    :cond_5
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 2153
    invoke-direct/range {v0 .. v5}, Landroid/media/AudioTrack;->native_write_short([SIIIZ)I

    move-result v6

    .line 2156
    .local v6, "ret":I
    iget v0, p0, Landroid/media/AudioTrack;->mDataLoadMode:I

    if-nez v0, :cond_6

    .line 2157
    iget v0, p0, Landroid/media/AudioTrack;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 2158
    if-lez v6, :cond_6

    .line 2160
    iput v7, p0, Landroid/media/AudioTrack;->mState:I

    .line 2163
    :cond_6
    return v6
.end method
