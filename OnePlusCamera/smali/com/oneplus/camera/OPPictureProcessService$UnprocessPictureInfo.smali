.class Lcom/oneplus/camera/OPPictureProcessService$UnprocessPictureInfo;
.super Ljava/lang/Object;
.source "OPPictureProcessService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/OPPictureProcessService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnprocessPictureInfo"
.end annotation


# instance fields
.field contentUri:Landroid/net/Uri;

.field filePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/oneplus/camera/OPPictureProcessService$UnprocessPictureInfo;->filePath:Ljava/lang/String;

    .line 109
    iput-object p2, p0, Lcom/oneplus/camera/OPPictureProcessService$UnprocessPictureInfo;->contentUri:Landroid/net/Uri;

    .line 106
    return-void
.end method


# virtual methods
.method public getContentUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService$UnprocessPictureInfo;->contentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService$UnprocessPictureInfo;->filePath:Ljava/lang/String;

    return-object v0
.end method
