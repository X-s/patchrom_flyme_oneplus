.class Lcom/oppo/tribune/square/resdown/util/MediaFile$MediaFileType;
.super Ljava/lang/Object;
.source "MediaFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/square/resdown/util/MediaFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaFileType"
.end annotation


# instance fields
.field fileType:I

.field mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "fileType"    # I
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput p1, p0, Lcom/oppo/tribune/square/resdown/util/MediaFile$MediaFileType;->fileType:I

    .line 74
    iput-object p2, p0, Lcom/oppo/tribune/square/resdown/util/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    .line 75
    return-void
.end method
