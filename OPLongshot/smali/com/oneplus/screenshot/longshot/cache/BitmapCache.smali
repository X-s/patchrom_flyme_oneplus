.class public Lcom/oneplus/screenshot/longshot/cache/BitmapCache;
.super Ljava/lang/Object;
.source "BitmapCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BitmapCache"


# instance fields
.field private mBitmapBottom:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

.field private mBitmapMain:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

.field private mBitmapTop:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

.field private mIndex:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, v0, v0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;-><init>(Landroid/graphics/Bitmap;II)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;II)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "paddingTop"    # I
    .param p3, "paddingBottom"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapTop:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    .line 15
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapBottom:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    .line 16
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapMain:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    .line 17
    iput v1, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mIndex:I

    .line 27
    if-lez p2, :cond_0

    .line 28
    new-instance v0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;-><init>(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Landroid/graphics/Bitmap;II)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapTop:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    .line 29
    const-string v0, "BitmapCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new mBitmapTop by paddingTop="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/screenshot/util/TimeTrace;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :cond_0
    if-lez p3, :cond_1

    .line 32
    new-instance v0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v1, p3

    invoke-direct {v0, p0, p1, v1, p3}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;-><init>(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Landroid/graphics/Bitmap;II)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapBottom:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    .line 33
    const-string v0, "BitmapCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new mBitmapBottom by paddingBottom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/screenshot/util/TimeTrace;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->initMain(Landroid/graphics/Bitmap;II)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "top"    # Landroid/graphics/Bitmap;
    .param p3, "bottom"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapTop:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    .line 15
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapBottom:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    .line 16
    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapMain:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    .line 17
    iput v3, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mIndex:I

    .line 39
    if-eqz p2, :cond_0

    .line 40
    new-instance v0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    invoke-direct {v0, p0, p2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;-><init>(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapTop:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    .line 41
    const-string v0, "BitmapCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new mBitmapTop by bitmap top="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/screenshot/util/TimeTrace;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_0
    if-eqz p3, :cond_1

    .line 44
    new-instance v0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    invoke-direct {v0, p0, p3}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;-><init>(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapBottom:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    .line 45
    const-string v0, "BitmapCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new mBitmapBottom by bitmap bottom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/screenshot/util/TimeTrace;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_1
    invoke-direct {p0, p1, v3, v3}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->initMain(Landroid/graphics/Bitmap;II)V

    .line 48
    return-void
.end method

.method private initMain(Landroid/graphics/Bitmap;II)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "paddingTop"    # I
    .param p3, "paddingBottom"    # I

    .prologue
    .line 111
    new-instance v0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p3

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;-><init>(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Landroid/graphics/Bitmap;II)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapMain:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    .line 112
    const-string v0, "BitmapCache"

    const-string v1, "new mBitmapMain"

    invoke-static {v0, v1}, Lcom/oneplus/screenshot/util/TimeTrace;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapMain:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapMain:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBottom()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapBottom:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapBottom:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 71
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTop()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapTop:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapTop:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recycle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 93
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapMain:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapMain:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;->recycle()V

    .line 95
    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapMain:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapTop:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapTop:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;->recycle()V

    .line 99
    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapTop:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapBottom:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapBottom:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;->recycle()V

    .line 103
    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapBottom:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    .line 105
    :cond_2
    return-void
.end method

.method public removeBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 76
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapMain:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    .line 77
    return-object v0
.end method

.method public removeBottom()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 88
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapBottom:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    .line 89
    return-object v0
.end method

.method public removeTop()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getTop()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 82
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->mBitmapTop:Lcom/oneplus/screenshot/longshot/cache/BitmapCache$BitmapHolder;

    .line 83
    return-object v0
.end method
