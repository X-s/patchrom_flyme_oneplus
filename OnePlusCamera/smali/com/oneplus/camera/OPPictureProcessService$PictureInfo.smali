.class Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;
.super Ljava/lang/Object;
.source "OPPictureProcessService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/OPPictureProcessService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PictureInfo"
.end annotation


# instance fields
.field contentUri:Landroid/net/Uri;

.field filePath:Ljava/lang/String;

.field halPictureId:Ljava/lang/String;

.field private m_Token:Ljava/lang/Object;

.field offlineState:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

.field pictureId:Ljava/lang/String;

.field processedPictureBuffer:[B

.field watermark:Lcom/oneplus/camera/watermark/Watermark;

.field watermarkBounds:Landroid/graphics/Rect;

.field watermarkBuffer:[B

.field watermarkState:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

.field watermarkText:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    sget-object v0, Lcom/oneplus/camera/OPPictureProcessService$ProcessState;->NO_NEED:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    iput-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->offlineState:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    .line 138
    sget-object v0, Lcom/oneplus/camera/OPPictureProcessService$ProcessState;->NO_NEED:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    iput-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->watermarkState:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    .line 142
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->m_Token:Ljava/lang/Object;

    .line 126
    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;-><init>()V

    return-void
.end method


# virtual methods
.method final getToken()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->m_Token:Ljava/lang/Object;

    return-object v0
.end method

.method final refreshToken()V
    .locals 1

    .prologue
    .line 153
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->m_Token:Ljava/lang/Object;

    .line 151
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{PictureInfo["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] Picture id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->pictureId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", HAL id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->halPictureId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 161
    const-string/jumbo v1, ", file: "

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->filePath:Ljava/lang/String;

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 161
    const-string/jumbo v1, ", uri: "

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->contentUri:Landroid/net/Uri;

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 161
    const-string/jumbo v1, ", offline: "

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->offlineState:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 161
    const-string/jumbo v1, ", watermark: "

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->watermarkState:Lcom/oneplus/camera/OPPictureProcessService$ProcessState;

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 162
    const-string/jumbo v1, ", token: "

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->m_Token:Ljava/lang/Object;

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 162
    const-string/jumbo v1, ", offline buffer: "

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->processedPictureBuffer:[B

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 162
    const-string/jumbo v1, ", watermark buffer: "

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/oneplus/camera/OPPictureProcessService$PictureInfo;->watermarkBuffer:[B

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 162
    const-string/jumbo v1, "}"

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
