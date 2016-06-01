.class public final Lcom/oppo/music/provider/MediaUtil$Download$Columns;
.super Ljava/lang/Object;
.source "MediaUtil.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/music/provider/MediaUtil$Download;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Columns"
.end annotation


# static fields
.field public static final ARTIST_NAME:Ljava/lang/String; = "artist_name"

.field public static final DOWNLOAD_ID:Ljava/lang/String; = "download_id"

.field public static final DOWNLOAD_STATUS:Ljava/lang/String; = "download_status"

.field public static final LOCAL_ID:Ljava/lang/String; = "local_id"

.field public static final SAVE_PATH:Ljava/lang/String; = "save_path"

.field public static final THUMB_URL:Ljava/lang/String; = "thumb_url"

.field public static final TRACK_NAME:Ljava/lang/String; = "track_name"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
