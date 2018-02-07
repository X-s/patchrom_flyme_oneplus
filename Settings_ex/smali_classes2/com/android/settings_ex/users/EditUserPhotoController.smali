.class public Lcom/android/settings_ex/users/EditUserPhotoController;
.super Ljava/lang/Object;
.source "EditUserPhotoController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/users/EditUserPhotoController$RestrictedMenuItem;,
        Lcom/android/settings_ex/users/EditUserPhotoController$RestrictedPopupMenuAdapter;
    }
.end annotation


# static fields
.field private static final CROP_PICTURE_FILE_NAME:Ljava/lang/String; = "CropEditUserPhoto.jpg"

.field private static final NEW_USER_PHOTO_FILE_NAME:Ljava/lang/String; = "NewUserPhoto.png"

.field private static final REQUEST_CODE_CHOOSE_PHOTO:I = 0x3e9

.field private static final REQUEST_CODE_CROP_PHOTO:I = 0x3eb

.field private static final REQUEST_CODE_TAKE_PHOTO:I = 0x3ea

.field private static final TAG:Ljava/lang/String; = "EditUserPhotoController"

.field private static final TAKE_PICTURE_FILE_NAME:Ljava/lang/String; = "TakeEditUserPhoto2.jpg"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCropPictureUri:Landroid/net/Uri;

.field private final mFragment:Landroid/app/Fragment;

.field private final mImageView:Landroid/widget/ImageView;

.field private mNewUserPhotoBitmap:Landroid/graphics/Bitmap;

.field private mNewUserPhotoDrawable:Landroid/graphics/drawable/Drawable;

.field private final mPhotoSize:I

.field private final mTakePictureUri:Landroid/net/Uri;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/users/EditUserPhotoController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/users/EditUserPhotoController;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/users/EditUserPhotoController;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mNewUserPhotoBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings_ex/users/EditUserPhotoController;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mNewUserPhotoDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings_ex/users/EditUserPhotoController;)I
    .locals 1

    iget v0, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mPhotoSize:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings_ex/users/EditUserPhotoController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mNewUserPhotoBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/settings_ex/users/EditUserPhotoController;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mNewUserPhotoDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/users/EditUserPhotoController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/users/EditUserPhotoController;->choosePhoto()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/users/EditUserPhotoController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/users/EditUserPhotoController;->showUpdatePhotoPopup()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings_ex/users/EditUserPhotoController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/users/EditUserPhotoController;->takePhoto()V

    return-void
.end method

.method public constructor <init>(Landroid/app/Fragment;Landroid/widget/ImageView;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Z)V
    .locals 5
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "view"    # Landroid/widget/ImageView;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p5, "waiting"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-virtual {p2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mContext:Landroid/content/Context;

    .line 93
    iput-object p1, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mFragment:Landroid/app/Fragment;

    .line 94
    iput-object p2, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    .line 95
    iget-object v3, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "CropEditUserPhoto.jpg"

    if-eqz p5, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v3, v4, v0}, Lcom/android/settings_ex/users/EditUserPhotoController;->createTempImageUri(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mCropPictureUri:Landroid/net/Uri;

    .line 96
    iget-object v0, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "TakeEditUserPhoto2.jpg"

    if-eqz p5, :cond_1

    :goto_1
    invoke-direct {p0, v0, v3, v1}, Lcom/android/settings_ex/users/EditUserPhotoController;->createTempImageUri(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mTakePictureUri:Landroid/net/Uri;

    .line 97
    iget-object v0, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings_ex/users/EditUserPhotoController;->getPhotoSize(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mPhotoSize:I

    .line 98
    iget-object v0, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/settings_ex/users/EditUserPhotoController$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/users/EditUserPhotoController$1;-><init>(Lcom/android/settings_ex/users/EditUserPhotoController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iput-object p3, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mNewUserPhotoBitmap:Landroid/graphics/Bitmap;

    .line 105
    iput-object p4, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mNewUserPhotoDrawable:Landroid/graphics/drawable/Drawable;

    .line 91
    return-void

    :cond_0
    move v0, v2

    .line 95
    goto :goto_0

    :cond_1
    move v1, v2

    .line 96
    goto :goto_1
.end method

.method private appendCropExtras(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 246
    const-string/jumbo v0, "crop"

    const-string/jumbo v1, "true"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    const-string/jumbo v0, "scale"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 248
    const-string/jumbo v0, "scaleUpIfNeeded"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 249
    const-string/jumbo v0, "aspectX"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 250
    const-string/jumbo v0, "aspectY"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 251
    const-string/jumbo v0, "outputX"

    iget v1, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mPhotoSize:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 252
    const-string/jumbo v0, "outputY"

    iget v1, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mPhotoSize:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 245
    return-void
.end method

.method private appendOutputExtra(Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "pictureUri"    # Landroid/net/Uri;

    .prologue
    .line 239
    const-string/jumbo v0, "output"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 240
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 242
    const-string/jumbo v0, "output"

    invoke-static {v0, p2}, Landroid/content/ClipData;->newRawUri(Ljava/lang/CharSequence;Landroid/net/Uri;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 238
    return-void
.end method

.method private canChoosePhoto()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 201
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "image/*"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    iget-object v2, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private canTakePhoto()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 195
    iget-object v1, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 196
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    const/high16 v3, 0x10000

    .line 195
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private choosePhoto()V
    .locals 3

    .prologue
    .line 214
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.GET_CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 215
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    iget-object v1, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mTakePictureUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/users/EditUserPhotoController;->appendOutputExtra(Landroid/content/Intent;Landroid/net/Uri;)V

    .line 217
    iget-object v1, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mFragment:Landroid/app/Fragment;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v0, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 213
    return-void
.end method

.method private createTempImageUri(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "purge"    # Z

    .prologue
    .line 335
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 336
    .local v0, "folder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 337
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 338
    .local v1, "fullPath":Ljava/io/File;
    if-eqz p3, :cond_0

    .line 339
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 342
    :cond_0
    const-string/jumbo v2, "com.android.settings_ex.files"

    .line 341
    invoke-static {p1, v2, v1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method private cropPhoto(Landroid/net/Uri;)V
    .locals 3
    .param p1, "pictureUri"    # Landroid/net/Uri;

    .prologue
    .line 222
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.camera.action.CROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    iget-object v1, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mCropPictureUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/users/EditUserPhotoController;->appendOutputExtra(Landroid/content/Intent;Landroid/net/Uri;)V

    .line 225
    invoke-direct {p0, v0}, Lcom/android/settings_ex/users/EditUserPhotoController;->appendCropExtras(Landroid/content/Intent;)V

    .line 226
    iget-object v1, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 228
    :try_start_0
    invoke-static {}, Landroid/os/StrictMode;->disableDeathOnFileUriExposure()V

    .line 229
    iget-object v1, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mFragment:Landroid/app/Fragment;

    const/16 v2, 0x3eb

    invoke-virtual {v1, v0, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    .line 220
    :goto_0
    return-void

    .line 230
    :catchall_0
    move-exception v1

    .line 231
    invoke-static {}, Landroid/os/StrictMode;->enableDeathOnFileUriExposure()V

    .line 230
    throw v1

    .line 234
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/settings_ex/users/EditUserPhotoController;->onPhotoCropped(Landroid/net/Uri;Z)V

    goto :goto_0
.end method

.method private static getPhotoSize(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 323
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 324
    sget-object v1, Landroid/provider/ContactsContract$DisplayPhoto;->CONTENT_MAX_DIMENSIONS_URI:Landroid/net/Uri;

    .line 325
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "display_max_dim"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    .line 323
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 327
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 328
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 330
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 328
    return v0

    .line 329
    :catchall_0
    move-exception v0

    .line 330
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 329
    throw v0
.end method

.method static loadNewUserPhotoBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 363
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private onPhotoCropped(Landroid/net/Uri;Z)V
    .locals 3
    .param p1, "data"    # Landroid/net/Uri;
    .param p2, "cropped"    # Z

    .prologue
    .line 256
    new-instance v1, Lcom/android/settings_ex/users/EditUserPhotoController$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/settings_ex/users/EditUserPhotoController$5;-><init>(Lcom/android/settings_ex/users/EditUserPhotoController;ZLandroid/net/Uri;)V

    .line 319
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    .line 256
    invoke-virtual {v1, v2, v0}, Lcom/android/settings_ex/users/EditUserPhotoController$5;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 255
    return-void
.end method

.method private showUpdatePhotoPopup()V
    .locals 11

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/settings_ex/users/EditUserPhotoController;->canTakePhoto()Z

    move-result v2

    .line 136
    .local v2, "canTakePhoto":Z
    invoke-direct {p0}, Lcom/android/settings_ex/users/EditUserPhotoController;->canChoosePhoto()Z

    move-result v1

    .line 138
    .local v1, "canChoosePhoto":Z
    if-nez v2, :cond_0

    if-eqz v1, :cond_3

    .line 142
    :cond_0
    iget-object v8, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 143
    .local v3, "context":Landroid/content/Context;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v4, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/users/EditUserPhotoController$RestrictedMenuItem;>;"
    if-eqz v2, :cond_1

    .line 146
    const v8, 0x7f0e0db2

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 147
    .local v6, "title":Ljava/lang/String;
    new-instance v0, Lcom/android/settings_ex/users/EditUserPhotoController$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/users/EditUserPhotoController$2;-><init>(Lcom/android/settings_ex/users/EditUserPhotoController;)V

    .line 153
    .local v0, "action":Ljava/lang/Runnable;
    new-instance v8, Lcom/android/settings_ex/users/EditUserPhotoController$RestrictedMenuItem;

    const-string/jumbo v9, "no_set_user_icon"

    invoke-direct {v8, v3, v6, v9, v0}, Lcom/android/settings_ex/users/EditUserPhotoController$RestrictedMenuItem;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    .end local v0    # "action":Ljava/lang/Runnable;
    .end local v6    # "title":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    .line 158
    const v8, 0x7f0e0db3

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 159
    .restart local v6    # "title":Ljava/lang/String;
    new-instance v0, Lcom/android/settings_ex/users/EditUserPhotoController$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/users/EditUserPhotoController$3;-><init>(Lcom/android/settings_ex/users/EditUserPhotoController;)V

    .line 165
    .restart local v0    # "action":Ljava/lang/Runnable;
    new-instance v8, Lcom/android/settings_ex/users/EditUserPhotoController$RestrictedMenuItem;

    const-string/jumbo v9, "no_set_user_icon"

    invoke-direct {v8, v3, v6, v9, v0}, Lcom/android/settings_ex/users/EditUserPhotoController$RestrictedMenuItem;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    .end local v0    # "action":Ljava/lang/Runnable;
    .end local v6    # "title":Ljava/lang/String;
    :cond_2
    new-instance v5, Landroid/widget/ListPopupWindow;

    invoke-direct {v5, v3}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 171
    .local v5, "listPopupWindow":Landroid/widget/ListPopupWindow;
    iget-object v8, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 172
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 173
    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 174
    new-instance v8, Lcom/android/settings_ex/users/EditUserPhotoController$RestrictedPopupMenuAdapter;

    invoke-direct {v8, v3, v4}, Lcom/android/settings_ex/users/EditUserPhotoController$RestrictedPopupMenuAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v5, v8}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 176
    iget-object v8, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getWidth()I

    move-result v8

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 177
    const v10, 0x7f0f01e5

    .line 176
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 178
    .local v7, "width":I
    invoke-virtual {v5, v7}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 179
    const v8, 0x800003

    invoke-virtual {v5, v8}, Landroid/widget/ListPopupWindow;->setDropDownGravity(I)V

    .line 181
    new-instance v8, Lcom/android/settings_ex/users/EditUserPhotoController$4;

    invoke-direct {v8, p0, v5}, Lcom/android/settings_ex/users/EditUserPhotoController$4;-><init>(Lcom/android/settings_ex/users/EditUserPhotoController;Landroid/widget/ListPopupWindow;)V

    invoke-virtual {v5, v8}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 191
    invoke-virtual {v5}, Landroid/widget/ListPopupWindow;->show()V

    .line 134
    return-void

    .line 139
    .end local v3    # "context":Landroid/content/Context;
    .end local v4    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings_ex/users/EditUserPhotoController$RestrictedMenuItem;>;"
    .end local v5    # "listPopupWindow":Landroid/widget/ListPopupWindow;
    .end local v7    # "width":I
    :cond_3
    return-void
.end method

.method private takePhoto()V
    .locals 3

    .prologue
    .line 208
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mTakePictureUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/users/EditUserPhotoController;->appendOutputExtra(Landroid/content/Intent;Landroid/net/Uri;)V

    .line 210
    iget-object v1, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mFragment:Landroid/app/Fragment;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v0, v2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 207
    return-void
.end method


# virtual methods
.method public getNewUserPhotoBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mNewUserPhotoBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getNewUserPhotoDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mNewUserPhotoDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 109
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 110
    return v3

    .line 112
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 113
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 114
    .local v0, "pictureUri":Landroid/net/Uri;
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 123
    return v3

    .line 113
    .end local v0    # "pictureUri":Landroid/net/Uri;
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mTakePictureUri:Landroid/net/Uri;

    .restart local v0    # "pictureUri":Landroid/net/Uri;
    goto :goto_0

    .line 116
    :pswitch_0
    invoke-direct {p0, v0, v2}, Lcom/android/settings_ex/users/EditUserPhotoController;->onPhotoCropped(Landroid/net/Uri;Z)V

    .line 117
    return v2

    .line 120
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/settings_ex/users/EditUserPhotoController;->cropPhoto(Landroid/net/Uri;)V

    .line 121
    return v2

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method removeNewUserPhotoBitmapFile()V
    .locals 3

    .prologue
    .line 367
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "NewUserPhoto.png"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 366
    return-void
.end method

.method saveNewUserPhotoBitmap()Ljava/io/File;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 346
    iget-object v3, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mNewUserPhotoBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    .line 347
    return-object v6

    .line 350
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "NewUserPhoto.png"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 351
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 352
    .local v2, "os":Ljava/io/OutputStream;
    iget-object v3, p0, Lcom/android/settings_ex/users/EditUserPhotoController;->mNewUserPhotoBitmap:Landroid/graphics/Bitmap;

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 353
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 354
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    return-object v1

    .line 356
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "os":Ljava/io/OutputStream;
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v3, "EditUserPhotoController"

    const-string/jumbo v4, "Cannot create temp file"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 359
    return-object v6
.end method
