.class public Landroid/app/Notification$BigPictureStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigPictureStyle"
.end annotation


# static fields
.field public static final MIN_ASHMEM_BITMAP_SIZE:I = 0x20000


# instance fields
.field private mBigLargeIcon:Landroid/graphics/drawable/Icon;

.field private mBigLargeIconSet:Z

.field private mPicture:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4271
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 4269
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    .line 4272
    return-void
.end method

.method public constructor <init>(Landroid/app/Notification$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 4274
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 4269
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    .line 4275
    invoke-virtual {p0, p1}, Landroid/app/Notification$BigPictureStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 4276
    return-void
.end method

.method private makeBigContentView()Landroid/widget/RemoteViews;
    .locals 5

    .prologue
    .line 4344
    const/4 v1, 0x0

    .line 4345
    .local v1, "oldLargeIcon":Landroid/graphics/drawable/Icon;
    iget-boolean v3, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    if-eqz v3, :cond_0

    .line 4346
    iget-object v3, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;
    invoke-static {v3}, Landroid/app/Notification$Builder;->access$2400(Landroid/app/Notification$Builder;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 4347
    iget-object v3, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v4, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    # setter for: Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;
    invoke-static {v3, v4}, Landroid/app/Notification$Builder;->access$2402(Landroid/app/Notification$Builder;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 4350
    :cond_0
    iget-object v3, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    # invokes: Landroid/app/Notification$Builder;->getBigPictureLayoutResource()I
    invoke-static {v3}, Landroid/app/Notification$Builder;->access$2500(Landroid/app/Notification$Builder;)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/app/Notification$BigPictureStyle;->getStandardView(I)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 4352
    .local v0, "contentView":Landroid/widget/RemoteViews;
    iget-boolean v3, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    if-eqz v3, :cond_1

    .line 4353
    iget-object v3, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    # setter for: Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/drawable/Icon;
    invoke-static {v3, v1}, Landroid/app/Notification$Builder;->access$2402(Landroid/app/Notification$Builder;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 4356
    :cond_1
    const v3, 0x1020373

    iget-object v4, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 4358
    invoke-virtual {p0, v0}, Landroid/app/Notification$BigPictureStyle;->applyTopPadding(Landroid/widget/RemoteViews;)V

    .line 4360
    iget-object v3, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mSubText:Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/app/Notification$Builder;->access$2000(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    # getter for: Landroid/app/Notification$Builder;->mContentText:Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/app/Notification$Builder;->access$2600(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    .line 4361
    .local v2, "twoTextLines":Z
    :goto_0
    iget-object v4, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    if-eqz v2, :cond_3

    const v3, 0x1020380

    :goto_1
    # invokes: Landroid/app/Notification$Builder;->addProfileBadge(Landroid/widget/RemoteViews;I)Z
    invoke-static {v4, v0, v3}, Landroid/app/Notification$Builder;->access$2700(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;I)Z

    .line 4363
    return-object v0

    .line 4360
    .end local v2    # "twoTextLines":Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 4361
    .restart local v2    # "twoTextLines":Z
    :cond_3
    const v3, 0x1020383

    goto :goto_1
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 4370
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    .line 4372
    iget-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    if-eqz v0, :cond_0

    .line 4373
    const-string v0, "android.largeIcon.big"

    iget-object v1, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4375
    :cond_0
    const-string v0, "android.picture"

    iget-object v1, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4376
    return-void
.end method

.method public bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;
    .locals 1
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 4307
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bigLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$BigPictureStyle;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .prologue
    .line 4314
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    .line 4315
    iput-object p1, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    .line 4316
    return-object p0
.end method

.method public bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;
    .locals 0
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 4299
    iput-object p1, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    .line 4300
    return-object p0
.end method

.method public populateBigContentView(Landroid/app/Notification;)V
    .locals 2
    .param p1, "wip"    # Landroid/app/Notification;

    .prologue
    .line 4397
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-direct {p0}, Landroid/app/Notification$BigPictureStyle;->makeBigContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    # invokes: Landroid/app/Notification$Builder;->setBuilderBigContentView(Landroid/app/Notification;Landroid/widget/RemoteViews;)V
    invoke-static {v0, p1, v1}, Landroid/app/Notification$Builder;->access$2800(Landroid/app/Notification$Builder;Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    .line 4398
    return-void
.end method

.method public purgeResources()V
    .locals 2

    .prologue
    .line 4327
    invoke-super {p0}, Landroid/app/Notification$Style;->purgeResources()V

    .line 4328
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0

    const/high16 v1, 0x20000

    if-lt v0, v1, :cond_0

    .line 4331
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    .line 4333
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_1

    .line 4334
    iget-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->convertToAshmem()V

    .line 4336
    :cond_1
    return-void
.end method

.method protected restoreFromExtras(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 4383
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    .line 4385
    const-string v0, "android.largeIcon.big"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4386
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    .line 4387
    const-string v0, "android.largeIcon.big"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/drawable/Icon;

    .line 4389
    :cond_0
    const-string v0, "android.picture"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    .line 4390
    return-void
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 4283
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$BigPictureStyle;->internalSetBigContentTitle(Ljava/lang/CharSequence;)V

    .line 4284
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 4291
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$BigPictureStyle;->internalSetSummaryText(Ljava/lang/CharSequence;)V

    .line 4292
    return-object p0
.end method
