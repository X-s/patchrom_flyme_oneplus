.class public final Lcom/oppo/music/provider/MediaUtil$OnlineTrackCache$Columns;
.super Ljava/lang/Object;
.source "MediaUtil.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/music/provider/MediaUtil$OnlineTrackCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Columns"
.end annotation


# static fields
.field public static final ALBUM_ID:Ljava/lang/String; = "album_id"

.field public static final ALBUM_NAME:Ljava/lang/String; = "album_name"

.field public static final ARTIST_ID:Ljava/lang/String; = "artist_id"

.field public static final ARTIST_NAME:Ljava/lang/String; = "artist_name"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final LYRIC_URL:Ljava/lang/String; = "lyric_url"

.field public static final THUMB_URL:Ljava/lang/String; = "thumb_url"

.field public static final TRACK_ID:Ljava/lang/String; = "track_id"

.field public static final TRACK_NAME:Ljava/lang/String; = "track_name"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
