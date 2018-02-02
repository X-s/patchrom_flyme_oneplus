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

.field private m_Fps:I

.field private final m_Height:I

.field private final m_TargetType:Lcom/oneplus/camera/media/MediaType;

.field private final m_Width:I


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/media/MediaType;II)V
    .locals 1
    .param p1, "type"    # Lcom/oneplus/camera/media/MediaType;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/camera/media/Resolution;-><init>(Lcom/oneplus/camera/media/MediaType;III)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/camera/media/MediaType;III)V
    .locals 0
    .param p1, "type"    # Lcom/oneplus/camera/media/MediaType;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "fps"    # I

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/oneplus/camera/media/Resolution;->m_TargetType:Lcom/oneplus/camera/media/MediaType;

    .line 64
    iput p2, p0, Lcom/oneplus/camera/media/Resolution;->m_Width:I

    .line 65
    iput p3, p0, Lcom/oneplus/camera/media/Resolution;->m_Height:I

    .line 66
    iput p4, p0, Lcom/oneplus/camera/media/Resolution;->m_Fps:I

    .line 61
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/camera/media/MediaType;Landroid/util/Size;)V
    .locals 3
    .param p1, "type"    # Lcom/oneplus/camera/media/MediaType;
    .param p2, "size"    # Landroid/util/Size;

    .prologue
    .line 41
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/oneplus/camera/media/Resolution;-><init>(Lcom/oneplus/camera/media/MediaType;III)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/oneplus/camera/media/Resolution;I)V
    .locals 3
    .param p1, "resolution"    # Lcom/oneplus/camera/media/Resolution;
    .param p2, "fps"    # I

    .prologue
    .line 51
    iget-object v0, p1, Lcom/oneplus/camera/media/Resolution;->m_TargetType:Lcom/oneplus/camera/media/MediaType;

    iget v1, p1, Lcom/oneplus/camera/media/Resolution;->m_Width:I

    iget v2, p1, Lcom/oneplus/camera/media/Resolution;->m_Height:I

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/oneplus/camera/media/Resolution;-><init>(Lcom/oneplus/camera/media/MediaType;III)V

    .line 49
    return-void
.end method

.method public static fromKey(Ljava/lang/String;)Lcom/oneplus/camera/media/Resolution;
    .locals 11
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 107
    if-nez p0, :cond_0

    .line 108
    return-object v10

    .line 112
    :cond_0
    const/16 v8, 0x5f

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 113
    .local v4, "index":I
    if-gez v4, :cond_1

    .line 114
    return-object v10

    .line 117
    :cond_1
    :try_start_0
    const-class v8, Lcom/oneplus/camera/media/MediaType;

    const/4 v9, 0x0

    invoke-virtual {p0, v9, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v6

    check-cast v6, Lcom/oneplus/camera/media/MediaType;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .local v6, "targetType":Lcom/oneplus/camera/media/MediaType;
    const/16 v8, 0x78

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    .line 127
    .local v5, "sizeSeparatorIndex":I
    const/16 v8, 0x23

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 128
    .local v2, "fpsSeparatorIndex":I
    if-gez v5, :cond_2

    .line 129
    return-object v10

    .line 120
    .end local v2    # "fpsSeparatorIndex":I
    .end local v5    # "sizeSeparatorIndex":I
    .end local v6    # "targetType":Lcom/oneplus/camera/media/MediaType;
    :catch_0
    move-exception v0

    .line 121
    .local v0, "ex":Ljava/lang/Throwable;
    return-object v10

    .line 130
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "fpsSeparatorIndex":I
    .restart local v5    # "sizeSeparatorIndex":I
    .restart local v6    # "targetType":Lcom/oneplus/camera/media/MediaType;
    :cond_2
    if-gez v2, :cond_3

    .line 131
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 134
    :cond_3
    add-int/lit8 v8, v4, 0x1

    :try_start_1
    invoke-virtual {p0, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 135
    .local v7, "width":I
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p0, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 143
    .local v3, "height":I
    const/4 v1, 0x0

    .line 144
    .local v1, "fps":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-eq v2, v8, :cond_4

    .line 148
    add-int/lit8 v8, v2, 0x1

    :try_start_2
    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    .line 157
    :cond_4
    new-instance v8, Lcom/oneplus/camera/media/Resolution;

    invoke-direct {v8, v6, v7, v3, v1}, Lcom/oneplus/camera/media/Resolution;-><init>(Lcom/oneplus/camera/media/MediaType;III)V

    return-object v8

    .line 138
    .end local v1    # "fps":I
    .end local v3    # "height":I
    .end local v7    # "width":I
    :catch_1
    move-exception v0

    .line 139
    .restart local v0    # "ex":Ljava/lang/Throwable;
    return-object v10

    .line 151
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v1    # "fps":I
    .restart local v3    # "height":I
    .restart local v7    # "width":I
    :catch_2
    move-exception v0

    .line 152
    .restart local v0    # "ex":Ljava/lang/Throwable;
    return-object v10
.end method


# virtual methods
.method public compareTo(Lcom/oneplus/camera/media/Resolution;)I
    .locals 4
    .param p1, "resolution"    # Lcom/oneplus/camera/media/Resolution;

    .prologue
    .line 73
    if-eqz p1, :cond_0

    .line 75
    iget v2, p0, Lcom/oneplus/camera/media/Resolution;->m_Width:I

    iget v3, p0, Lcom/oneplus/camera/media/Resolution;->m_Height:I

    mul-int v1, v2, v3

    .line 76
    .local v1, "size":I
    iget v2, p1, Lcom/oneplus/camera/media/Resolution;->m_Width:I

    iget v3, p1, Lcom/oneplus/camera/media/Resolution;->m_Height:I

    mul-int v0, v2, v3

    .line 77
    .local v0, "anotherSize":I
    sub-int v2, v1, v0

    return v2

    .line 79
    .end local v0    # "anotherSize":I
    .end local v1    # "size":I
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "resolution"    # Ljava/lang/Object;

    .prologue
    .line 71
    check-cast p1, Lcom/oneplus/camera/media/Resolution;

    .end local p1    # "resolution":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/media/Resolution;->compareTo(Lcom/oneplus/camera/media/Resolution;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 87
    instance-of v2, p1, Lcom/oneplus/camera/media/Resolution;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 89
    check-cast v0, Lcom/oneplus/camera/media/Resolution;

    .line 90
    .local v0, "resolution":Lcom/oneplus/camera/media/Resolution;
    iget-object v2, p0, Lcom/oneplus/camera/media/Resolution;->m_TargetType:Lcom/oneplus/camera/media/MediaType;

    iget-object v3, v0, Lcom/oneplus/camera/media/Resolution;->m_TargetType:Lcom/oneplus/camera/media/MediaType;

    if-ne v2, v3, :cond_0

    .line 91
    iget v2, p0, Lcom/oneplus/camera/media/Resolution;->m_Width:I

    iget v3, v0, Lcom/oneplus/camera/media/Resolution;->m_Width:I

    if-ne v2, v3, :cond_0

    .line 92
    iget v2, p0, Lcom/oneplus/camera/media/Resolution;->m_Height:I

    iget v3, v0, Lcom/oneplus/camera/media/Resolution;->m_Height:I

    if-ne v2, v3, :cond_0

    .line 93
    iget v2, p0, Lcom/oneplus/camera/media/Resolution;->m_Fps:I

    iget v3, v0, Lcom/oneplus/camera/media/Resolution;->m_Fps:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 90
    :cond_0
    return v1

    .line 95
    .end local v0    # "resolution":Lcom/oneplus/camera/media/Resolution;
    :cond_1
    return v1
.end method

.method public getAspectRatio()Lcom/oneplus/util/AspectRatio;
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/oneplus/camera/media/Resolution;->m_AspectRatio:Lcom/oneplus/util/AspectRatio;

    if-nez v0, :cond_0

    .line 168
    iget v0, p0, Lcom/oneplus/camera/media/Resolution;->m_Width:I

    int-to-float v0, v0

    iget v1, p0, Lcom/oneplus/camera/media/Resolution;->m_Height:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/oneplus/util/AspectRatio;->get(FF)Lcom/oneplus/util/AspectRatio;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/camera/media/Resolution;->m_AspectRatio:Lcom/oneplus/util/AspectRatio;

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/media/Resolution;->m_AspectRatio:Lcom/oneplus/util/AspectRatio;

    return-object v0
.end method

.method public getFps()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/oneplus/camera/media/Resolution;->m_Fps:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/oneplus/camera/media/Resolution;->m_Height:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oneplus/camera/media/Resolution;->m_TargetType:Lcom/oneplus/camera/media/MediaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/camera/media/Resolution;->m_Width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/camera/media/Resolution;->m_Height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/camera/media/Resolution;->m_Fps:I

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

    .line 207
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

    .line 217
    iget v1, p0, Lcom/oneplus/camera/media/Resolution;->m_Width:I

    iget v2, p0, Lcom/oneplus/camera/media/Resolution;->m_Height:I

    mul-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v3

    div-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 218
    .local v0, "mp":I
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "%dMP"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMenuDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/oneplus/camera/media/Resolution;->getMegaPixelsDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/camera/media/Resolution;->m_Width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/camera/media/Resolution;->m_Height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTargetType()Lcom/oneplus/camera/media/MediaType;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/oneplus/camera/media/Resolution;->m_TargetType:Lcom/oneplus/camera/media/MediaType;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/oneplus/camera/media/Resolution;->m_Width:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 257
    iget v0, p0, Lcom/oneplus/camera/media/Resolution;->m_Width:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lcom/oneplus/camera/media/Resolution;->m_Height:I

    const v2, 0xffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public is1080pVideo()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 267
    iget-object v2, p0, Lcom/oneplus/camera/media/Resolution;->m_TargetType:Lcom/oneplus/camera/media/MediaType;

    sget-object v3, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v2, v3, :cond_2

    .line 268
    iget v2, p0, Lcom/oneplus/camera/media/Resolution;->m_Width:I

    const/16 v3, 0x780

    if-ne v2, v3, :cond_2

    .line 269
    iget v2, p0, Lcom/oneplus/camera/media/Resolution;->m_Height:I

    const/16 v3, 0x438

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/oneplus/camera/media/Resolution;->m_Height:I

    const/16 v3, 0x440

    if-ne v2, v3, :cond_1

    .line 267
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 269
    goto :goto_0

    :cond_2
    move v0, v1

    .line 267
    goto :goto_0
.end method

.method public is4kVideo()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 279
    iget-object v1, p0, Lcom/oneplus/camera/media/Resolution;->m_TargetType:Lcom/oneplus/camera/media/MediaType;

    sget-object v2, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v1, v2, :cond_1

    .line 280
    iget v1, p0, Lcom/oneplus/camera/media/Resolution;->m_Width:I

    const/16 v2, 0x1000

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/oneplus/camera/media/Resolution;->m_Width:I

    const/16 v2, 0xf00

    if-ne v1, v2, :cond_1

    .line 281
    :cond_0
    iget v1, p0, Lcom/oneplus/camera/media/Resolution;->m_Height:I

    const/16 v2, 0x870

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 279
    :cond_1
    return v0
.end method

.method public is720pVideo()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 290
    iget-object v1, p0, Lcom/oneplus/camera/media/Resolution;->m_TargetType:Lcom/oneplus/camera/media/MediaType;

    sget-object v2, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v1, v2, :cond_0

    .line 291
    iget v1, p0, Lcom/oneplus/camera/media/Resolution;->m_Width:I

    const/16 v2, 0x500

    if-ne v1, v2, :cond_0

    .line 292
    iget v1, p0, Lcom/oneplus/camera/media/Resolution;->m_Height:I

    const/16 v2, 0x2d0

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 290
    :cond_0
    return v0
.end method

.method public isMmsVideo()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 302
    iget-object v1, p0, Lcom/oneplus/camera/media/Resolution;->m_TargetType:Lcom/oneplus/camera/media/MediaType;

    sget-object v2, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    if-ne v1, v2, :cond_0

    .line 303
    iget v1, p0, Lcom/oneplus/camera/media/Resolution;->m_Width:I

    const/16 v2, 0xb0

    if-ne v1, v2, :cond_0

    .line 304
    iget v1, p0, Lcom/oneplus/camera/media/Resolution;->m_Height:I

    const/16 v2, 0x90

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 302
    :cond_0
    return v0
.end method

.method public isWiderThan(Lcom/oneplus/camera/media/Resolution;)Z
    .locals 4
    .param p1, "resolution"    # Lcom/oneplus/camera/media/Resolution;

    .prologue
    const/4 v0, 0x0

    .line 315
    if-eqz p1, :cond_1

    .line 316
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

    :cond_0
    return v0

    .line 317
    :cond_1
    return v0
.end method

.method public toSize()Landroid/util/Size;
    .locals 3

    .prologue
    .line 327
    new-instance v0, Landroid/util/Size;

    iget v1, p0, Lcom/oneplus/camera/media/Resolution;->m_Width:I

    iget v2, p0, Lcom/oneplus/camera/media/Resolution;->m_Height:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 335
    invoke-virtual {p0}, Lcom/oneplus/camera/media/Resolution;->getAspectRatio()Lcom/oneplus/util/AspectRatio;

    move-result-object v1

    .line 336
    .local v1, "ratio":Lcom/oneplus/util/AspectRatio;
    iget v2, p0, Lcom/oneplus/camera/media/Resolution;->m_Fps:I

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/camera/media/Resolution;->m_Fps:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "Fps"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "fpsString":Ljava/lang/String;
    :goto_0
    sget-object v2, Lcom/oneplus/util/AspectRatio;->UNKNOWN:Lcom/oneplus/util/AspectRatio;

    if-eq v1, v2, :cond_1

    .line 338
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/oneplus/camera/media/Resolution;->m_Width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/camera/media/Resolution;->m_Height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oneplus/camera/media/Resolution;->getMegaPixelsDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 336
    .end local v0    # "fpsString":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, ""

    .restart local v0    # "fpsString":Ljava/lang/String;
    goto :goto_0

    .line 339
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/oneplus/camera/media/Resolution;->m_Width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/camera/media/Resolution;->m_Height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oneplus/camera/media/Resolution;->getMegaPixelsDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
