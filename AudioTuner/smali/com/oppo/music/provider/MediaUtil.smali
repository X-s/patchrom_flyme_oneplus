.class public Lcom/oppo/music/provider/MediaUtil;
.super Ljava/lang/Object;
.source "MediaUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/music/provider/MediaUtil$PlaylistMap_TB;,
        Lcom/oppo/music/provider/MediaUtil$AudioThumb_TB;,
        Lcom/oppo/music/provider/MediaUtil$Download;,
        Lcom/oppo/music/provider/MediaUtil$OnlineTrackCache;,
        Lcom/oppo/music/provider/MediaUtil$PlaylistMap;,
        Lcom/oppo/music/provider/MediaUtil$AudioThumb;
    }
.end annotation


# static fields
.field public static final AUDIO_THUMB_FOLDER:Ljava/lang/String; = "Android/data/com.oppo.music/.audiothumbs"

.field public static final AUTHORITY:Ljava/lang/String; = "oppomedia"

.field public static final THUMB_FILE_PREFIX:Ljava/lang/String; = "thumb_"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    return-void
.end method
