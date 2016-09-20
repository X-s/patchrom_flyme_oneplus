.class public final Lcom/oneplus/camera/media/Resolution;
.super Ljava/lang/Object;
.source "Resolution.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/oneplus/camera/media/Resolution;",
        ">;"
    }
.end annotation


# instance fields
.field private m_AspectRatio:Lcom/oneplus/util/AspectRatio;

.field private final m_Height:I

.field private final m_TargetType:Lcom/oneplus/camera/media/MediaType;

.field private final m_Width:I


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/media/MediaType;II)V
    .locals 0
    .param p1, "type"    # Lcom/oneplus/camera/media/MediaType;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/oneplus/camera/media/Resolution;->m_TargetType:Lcom/oneplus/camera/media/MediaType;

    .line 31
    iput p2, p0, Lcom/oneplus/camera/media/Resolution;->m_Width:I

    .line 32
    iput p3, p0, Lcom/oneplus/camera/media/Resolution;->m_Height:I

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/camera/media/MediaType;Landroid/util/Size;)V
    .locals 1
    .param p1, "type"    # Lcom/oneplus/camera/media/MediaType;
    .param p2, "size"    # Landroid/util/Size;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/oneplus/camera/media/Resolution;->m_TargetType:Lcom/oneplus/camera/media/MediaType;

    .line 44
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/oneplus/camera/media/Resolution;->m_Width:I

    .line 45
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/oneplus/camera/media/Resolution;->m_Height:I

    .line 46
    return-void
.end method

.method public static fromKey(Ljava/lang/String;)Lcom/oneplus/camera/media/Resolution;
    .locals 9
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 86
    if-nez p0, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-object v6

    .line 91
    :cond_1
    const/16 v7, 0x5f

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 92
    .local v2, "index":I
    if-ltz v2, :cond_0

    .line 96
    :try_start_0
    const-class v7, Lcom/oneplus/camera/media/MediaType;

    const/4 v8, 0x0

    invoke-virtual {p0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v4

    check-cast v4, Lcom/oneplus/camera/media/MediaType;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .local v4, "targetType":Lcom/oneplus/camera/media/MediaType;
    const/16 v7, 0x78

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 106
    .local v3, "sizeSeparatorIndex":I
    if-ltz v3, :cond_0

    .line 110
    add-int/lit8 v7, v2, 0x1

    :try_start_1
    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 111
    .local v5, "width":I
    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 119
    .local v1, "height":I
    new-instance v6, Lcom/oneplus/camera/media/Resolution;

    invoke-direct {v6, v4, v5, v1}, Lcom/oneplus/camera/media/Resolution;-><init>(Lcom/oneplus/camera/media/MediaType;II)V

    goto :goto_0

    .line 98
    .end local v1    # "height":I
    .end local v3    # "sizeSeparatorIndex":I
    .end local v4    # "targetType":Lcom/oneplus/camera/media/MediaType;
    .end local v5    # "width":I
    :catch_0
    move-exception v0

    .line 100
    .local v0, "ex":Ljava/lang/Throwable;
    goto :goto_0

    .line 113
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v3    # "sizeSeparatorIndex":I
    .restart local v4    # "targetType":Lcom/oneplus/camera/media/MediaType;
    :catch_1
    move-exception v0

    .line 115
    .restart local v0    # "ex":Ljava/lang/Throwable;
    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/oneplus/camera/media/Resolution;)I
    .locals 4
    .param p1, "resolution"    # Lcom/oneplus/camera/media/Resolution;

    .prologue
    .line 53
    if-eqz p1, :cond_0

    .line 55
    iget v2, p0, Lcom/oneplus/camera/media/Resolution;->m_Width:I

    iget v3, p0, Lcom/oneplus/camera/media/Resolution;->m_Height:I

    mul-int v1, v2, v3

    .line 56
    .local v1, "size":I
    iget v2, p1, Lcom/oneplus/camera/media/Resolution;->m_Width:I

    iget v3, p1, Lcom/oneplus/camera/media/Resolution;->m_Height:I

    mul-int v0, v2, v3

    .line 57
    .local v0, "anotherSize":I
    sub-int v2, v1, v0

    .line 59
    .end local v0    # "anotherSize":I
    .end local v1    # "size":I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 13
    check-cast p1, Lcom/oneplus/camera/media/Resolution;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/media/Resolution;->compareTo(Lcom/oneplus/camera/media/Resolution;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 67
    instance-of v2, p1, Lcom/oneplus/camera/media/Resolution;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 69
    check-cast v0, Lcom/oneplus/camera/media/Resolution;

    .line 70
    .local v0, "resolution":Lcom/oneplus/camera/media/Resolution;
    iget-object v2, p0, Lcom/oneplus/camera/media/Resolution;->m_TargetType:Lcom/oneplus/camera/media/MediaType;

    iget-object v3, v0, Lcom/oneplus/camera/media/Resolution;->m_TargetType:Lcom/oneplus/camera/media/MediaType;

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/oneplus/camera/media/Resolution;->m_Width:I

    iget v3, v0, Lcom/oneplus/camera/media/Resolution;->m_Width:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/oneplus/camera/media/Resolution;->m_Height:I

    iget v3, v0, Lcom/oneplus/camera/media/Resolution;->m_Height:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 74
    .end local v0    # "resolution":Lcom/oneplus/camera/media/Resolution;
    :cond_0
    return v1
.end method

.method public getAspectRatio()Lcom/oneplus/util/AspectRatio;
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/oneplus/camera/media/Resolution;->m_AspectRatio:Lcom/oneplus/util/AspectRatio;

    if-nez v0, :cond_0

    .line 130
    iget v0, p0, Lcom/oneplus/camera/media/Resolution;->m_Width:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oneplus/camera/media/Resolution;->m_Height:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/oneplus/util/AspectRatio;->get(FF)Lcom/oneplus/util/AspectRatio;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/media/Resolution;->m_AspectRatio:Lcom/oneplus/util/AspectRatio;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/media/Resolution;->m_AspectRatio:Lcom/oneplus/util/AspectRatio;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/oneplus/camera/media/Resolution;->m_Height:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oneplus/camera/media/Resolution;->m_TargetType:Lcom/oneplus/camera/media/MediaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/camera/media/Resolution;->m_Width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/camera/media/Resolution;->m_Height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMegaPixels()I
    .locals 3

    .prologue
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 161
    iget v0, p0, Lcom/oneplus/camera/media/Resolution;->m_Width:I

    iget v1, p0, Lcom/oneplus/camera/media/Resolution;->m_Height:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v2

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getMegaPixelsDescription()Ljava/lang/String;
    .locals 6

    .prologue
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 171
    iget v1, p0, Lcom/oneplus/camera/media/Resolution;->m_Width:I

    iget v2, p0, Lcom/oneplus/camera/media/Resolution;->m_Height:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v3

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 172
    .local v0, "mp":I
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%dMP"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMenuDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/oneplus/camera/media/Resolution;->getMegaPixelsDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/camera/media/Resolution;->m_Width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/camera/media/Resolution;->m_Height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTargetType()Lcom/oneplus/camera/media/MediaType;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/oneplus/camera/media/Resolution;->m_TargetType:Lcom/oneplus/camera/media/MediaType;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/oneplus/camera/media/Resolution;->m_Width:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 211
    iget v0, p0, Lcom/oneplus/camera/media/Resolution;->m_Width:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lcom/oneplus/camera/media/Resolution;->m_Height:I

    const v2, 0xffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public is1080pVideo()Z
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/oneplus/camera/media/Resolution;->m_TargetType:Lcom/oneplus/camera/media/MediaType;

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/oneplus/camera/media/Resolution;->m_Width:I

    const/16 v1, 0x780

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/oneplus/camera/media/Resolution;->m_Height:I

    const/16 v1, 0x438

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/oneplus/camera/media/Resolution;->m_Height:I

    const/16 v1, 0x440

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public is4kVideo()Z
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/oneplus/camera/media/Resolution;->m_TargetType:Lcom/oneplus/camera/media/MediaType;

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/oneplus/camera/media/Resolution;->m_Width:I

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/oneplus/camera/media/Resolution;->m_Width:I

    const/16 v1, 0xf00

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/oneplus/camera/media/Resolution;->m_Height:I

    const/16 v1, 0x870

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public is720pVideo()Z
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/oneplus/camera/media/Resolution;->m_TargetType:Lcom/oneplus/camera/media/MediaType;

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oneplus/camera/media/Resolution;->m_Width:I

    const/16 v1, 0x500

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oneplus/camera/media/Resolution;->m_Height:I

    const/16 v1, 0x2d0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMmsVideo()Z
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/oneplus/camera/media/Resolution;->m_TargetType:Lcom/oneplus/camera/media/MediaType;

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oneplus/camera/media/Resolution;->m_Width:I

    const/16 v1, 0xb0

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oneplus/camera/media/Resolution;->m_Height:I

    const/16 v1, 0x90

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWiderThan(Lcom/oneplus/camera/media/Resolution;)Z
    .locals 4
    .param p1, "resolution"    # Lcom/oneplus/camera/media/Resolution;

    .prologue
    const/4 v0, 0x0

    .line 270
    if-eqz p1, :cond_0

    .line 271
    iget v1, p0, Lcom/oneplus/camera/media/Resolution;->m_Width:I

    int-to-float v1, v1

    iget v2, p0, Lcom/oneplus/camera/media/Resolution;->m_Height:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p1, Lcom/oneplus/camera/media/Resolution;->m_Width:I

    int-to-float v2, v2

    iget v3, p1, Lcom/oneplus/camera/media/Resolution;->m_Height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 272
    :cond_0
    return v0
.end method

.method public toSize()Landroid/util/Size;
    .locals 3

    .prologue
    .line 282
    new-instance v0, Landroid/util/Size;

    iget v1, p0, Lcom/oneplus/camera/media/Resolution;->m_Width:I

    iget v2, p0, Lcom/oneplus/camera/media/Resolution;->m_Height:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/oneplus/camera/media/Resolution;->getAspectRatio()Lcom/oneplus/util/AspectRatio;

    move-result-object v0

    .line 291
    .local v0, "ratio":Lcom/oneplus/util/AspectRatio;
    sget-object v1, Lcom/oneplus/util/AspectRatio;->UNKNOWN:Lcom/oneplus/util/AspectRatio;

    if-eq v0, v1, :cond_0

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/oneplus/camera/media/Resolution;->m_Width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/camera/media/Resolution;->m_Height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/camera/media/Resolution;->getMegaPixelsDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 293
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/oneplus/camera/media/Resolution;->m_Width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/camera/media/Resolution;->m_Height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/camera/media/Resolution;->getMegaPixelsDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
