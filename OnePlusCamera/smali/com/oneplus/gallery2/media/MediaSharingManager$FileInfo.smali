.class public Lcom/oneplus/gallery2/media/MediaSharingManager$FileInfo;
.super Ljava/lang/Object;
.source "MediaSharingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/MediaSharingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileInfo"
.end annotation


# instance fields
.field creationTime:J

.field displayName:Ljava/lang/String;

.field file:Ljava/io/File;

.field lastModifiedTime:J

.field meta:Ljava/io/File;

.field mimeType:Ljava/lang/String;

.field title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
