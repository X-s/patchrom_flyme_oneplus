.class public Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;
.super Ljava/lang/Object;
.source "RecentsTaskLoader.java"


# static fields
.field static INVALID_TASK_ID:I

.field static sInstance:Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;


# instance fields
.field mActivityLabelCache:Lcom/android/systemui_ex/recents/model/StringLruCache;

.field mApplicationIconCache:Lcom/android/systemui_ex/recents/model/DrawableLruCache;

.field mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

.field mDefaultThumbnail:Landroid/graphics/Bitmap;

.field mLoadQueue:Lcom/android/systemui_ex/recents/model/TaskResourceLoadQueue;

.field mLoader:Lcom/android/systemui_ex/recents/model/TaskResourceLoader;

.field mMaxIconCacheSize:I

.field mMaxThumbnailCacheSize:I

.field mNumVisibleTasksLoaded:I

.field mNumVisibleThumbnailsLoaded:I

.field mPackageMonitor:Lcom/android/systemui_ex/recents/model/RecentsPackageMonitor;

.field mSystemServicesProxy:Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

.field mThumbnailCache:Lcom/android/systemui_ex/recents/model/BitmapLruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 269
    const/4 v0, -0x1

    sput v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->INVALID_TASK_ID:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0a0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    .line 292
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    .line 294
    iget v7, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    .line 296
    .local v7, "iconCacheSize":I
    iget v8, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    .line 300
    .local v8, "thumbnailCacheSize":I
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 301
    .local v6, "icon":Landroid/graphics/Bitmap;
    invoke-virtual {v6, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 302
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    .line 303
    iget-object v0, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 304
    iget-object v0, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 305
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

    .line 308
    new-instance v0, Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    invoke-direct {v0, p1}, Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mSystemServicesProxy:Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    .line 309
    new-instance v0, Lcom/android/systemui_ex/recents/model/RecentsPackageMonitor;

    invoke-direct {v0}, Lcom/android/systemui_ex/recents/model/RecentsPackageMonitor;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mPackageMonitor:Lcom/android/systemui_ex/recents/model/RecentsPackageMonitor;

    .line 310
    new-instance v0, Lcom/android/systemui_ex/recents/model/TaskResourceLoadQueue;

    invoke-direct {v0}, Lcom/android/systemui_ex/recents/model/TaskResourceLoadQueue;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui_ex/recents/model/TaskResourceLoadQueue;

    .line 311
    new-instance v0, Lcom/android/systemui_ex/recents/model/DrawableLruCache;

    invoke-direct {v0, v7}, Lcom/android/systemui_ex/recents/model/DrawableLruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui_ex/recents/model/DrawableLruCache;

    .line 312
    new-instance v0, Lcom/android/systemui_ex/recents/model/BitmapLruCache;

    invoke-direct {v0, v8}, Lcom/android/systemui_ex/recents/model/BitmapLruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui_ex/recents/model/BitmapLruCache;

    .line 313
    new-instance v0, Lcom/android/systemui_ex/recents/model/StringLruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/recents/model/StringLruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui_ex/recents/model/StringLruCache;

    .line 314
    new-instance v0, Lcom/android/systemui_ex/recents/model/TaskResourceLoader;

    iget-object v1, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui_ex/recents/model/TaskResourceLoadQueue;

    iget-object v2, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui_ex/recents/model/DrawableLruCache;

    iget-object v3, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui_ex/recents/model/BitmapLruCache;

    iget-object v4, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui_ex/recents/model/TaskResourceLoader;-><init>(Lcom/android/systemui_ex/recents/model/TaskResourceLoadQueue;Lcom/android/systemui_ex/recents/model/DrawableLruCache;Lcom/android/systemui_ex/recents/model/BitmapLruCache;Landroid/graphics/Bitmap;Landroid/graphics/drawable/BitmapDrawable;)V

    iput-object v0, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mLoader:Lcom/android/systemui_ex/recents/model/TaskResourceLoader;

    .line 316
    return-void
.end method

.method public static getInstance()Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;
    .locals 1

    .prologue
    .line 328
    sget-object v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->sInstance:Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;

    return-object v0
.end method

.method public static initialize(Landroid/content/Context;)Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 320
    sget-object v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->sInstance:Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;

    if-nez v0, :cond_0

    .line 321
    new-instance v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->sInstance:Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;

    .line 323
    :cond_0
    sget-object v0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->sInstance:Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;

    return-object v0
.end method


# virtual methods
.method public createLoadPlan(Landroid/content/Context;)Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 443
    invoke-static {}, Lcom/android/systemui_ex/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui_ex/recents/RecentsConfiguration;

    move-result-object v0

    .line 444
    .local v0, "config":Lcom/android/systemui_ex/recents/RecentsConfiguration;
    new-instance v1, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;

    iget-object v2, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mSystemServicesProxy:Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    invoke-direct {v1, p1, v0, v2}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;-><init>(Landroid/content/Context;Lcom/android/systemui_ex/recents/RecentsConfiguration;Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;)V

    .line 445
    .local v1, "plan":Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;
    return-object v1
.end method

.method public deleteTaskData(Lcom/android/systemui_ex/recents/model/Task;Z)V
    .locals 2
    .param p1, "t"    # Lcom/android/systemui_ex/recents/model/Task;
    .param p2, "notifyTaskDataUnloaded"    # Z

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui_ex/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/recents/model/TaskResourceLoadQueue;->removeTask(Lcom/android/systemui_ex/recents/model/Task;)V

    .line 493
    iget-object v0, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui_ex/recents/model/BitmapLruCache;

    iget-object v1, p1, Lcom/android/systemui_ex/recents/model/Task;->key:Lcom/android/systemui_ex/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/recents/model/BitmapLruCache;->remove(Lcom/android/systemui_ex/recents/model/Task$TaskKey;)V

    .line 494
    iget-object v0, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui_ex/recents/model/DrawableLruCache;

    iget-object v1, p1, Lcom/android/systemui_ex/recents/model/Task;->key:Lcom/android/systemui_ex/recents/model/Task$TaskKey;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/recents/model/DrawableLruCache;->remove(Lcom/android/systemui_ex/recents/model/Task$TaskKey;)V

    .line 495
    if-eqz p2, :cond_0

    .line 496
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui_ex/recents/model/Task;->notifyTaskDataUnloaded(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    .line 498
    :cond_0
    return-void
.end method

.method public getActivityPrimaryColor(Landroid/app/ActivityManager$TaskDescription;Lcom/android/systemui_ex/recents/RecentsConfiguration;)I
    .locals 1
    .param p1, "td"    # Landroid/app/ActivityManager$TaskDescription;
    .param p2, "config"    # Lcom/android/systemui_ex/recents/RecentsConfiguration;

    .prologue
    .line 425
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    invoke-virtual {p1}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v0

    .line 428
    :goto_0
    return v0

    :cond_0
    iget v0, p2, Lcom/android/systemui_ex/recents/RecentsConfiguration;->taskBarViewDefaultBackgroundColor:I

    goto :goto_0
.end method

.method public getAndUpdateActivityIcon(Lcom/android/systemui_ex/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;Landroid/content/res/Resources;Lcom/android/systemui_ex/recents/model/ActivityInfoHandle;Z)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "taskKey"    # Lcom/android/systemui_ex/recents/model/Task$TaskKey;
    .param p2, "td"    # Landroid/app/ActivityManager$TaskDescription;
    .param p3, "ssp"    # Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;
    .param p4, "res"    # Landroid/content/res/Resources;
    .param p5, "infoHandle"    # Lcom/android/systemui_ex/recents/model/ActivityInfoHandle;
    .param p6, "loadIfNotCached"    # Z

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui_ex/recents/model/DrawableLruCache;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/recents/model/DrawableLruCache;->getAndInvalidateIfModified(Lcom/android/systemui_ex/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Drawable;

    .line 370
    .local v6, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_0

    move-object v7, v6

    .line 397
    :goto_0
    return-object v7

    .line 374
    :cond_0
    if-eqz p6, :cond_3

    .line 376
    iget-object v0, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mLoader:Lcom/android/systemui_ex/recents/model/TaskResourceLoader;

    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getInMemoryIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui_ex/recents/model/TaskResourceLoader;->getTaskDescriptionIcon(Lcom/android/systemui_ex/recents/model/Task$TaskKey;Landroid/graphics/Bitmap;Ljava/lang/String;Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 378
    .local v7, "tdDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_1

    .line 379
    iget-object v0, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui_ex/recents/model/DrawableLruCache;

    invoke-virtual {v0, p1, v7}, Lcom/android/systemui_ex/recents/model/DrawableLruCache;->put(Lcom/android/systemui_ex/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    goto :goto_0

    .line 384
    :cond_1
    iget-object v0, p5, Lcom/android/systemui_ex/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_2

    .line 385
    iget-object v0, p1, Lcom/android/systemui_ex/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iget v1, p1, Lcom/android/systemui_ex/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p3, v0, v1}, Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iput-object v0, p5, Lcom/android/systemui_ex/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    .line 388
    :cond_2
    iget-object v0, p5, Lcom/android/systemui_ex/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_3

    .line 389
    iget-object v0, p5, Lcom/android/systemui_ex/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    iget v1, p1, Lcom/android/systemui_ex/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p3, v0, v1}, Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;->getActivityIcon(Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 390
    if-eqz v6, :cond_3

    .line 391
    iget-object v0, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui_ex/recents/model/DrawableLruCache;

    invoke-virtual {v0, p1, v6}, Lcom/android/systemui_ex/recents/model/DrawableLruCache;->put(Lcom/android/systemui_ex/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    move-object v7, v6

    .line 392
    goto :goto_0

    .line 397
    .end local v7    # "tdDrawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public getAndUpdateActivityLabel(Lcom/android/systemui_ex/recents/model/Task$TaskKey;Landroid/app/ActivityManager$TaskDescription;Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;Lcom/android/systemui_ex/recents/model/ActivityInfoHandle;)Ljava/lang/String;
    .locals 4
    .param p1, "taskKey"    # Lcom/android/systemui_ex/recents/model/Task$TaskKey;
    .param p2, "td"    # Landroid/app/ActivityManager$TaskDescription;
    .param p3, "ssp"    # Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;
    .param p4, "infoHandle"    # Lcom/android/systemui_ex/recents/model/ActivityInfoHandle;

    .prologue
    .line 341
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 342
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v0

    .line 361
    :cond_0
    :goto_0
    return-object v0

    .line 345
    :cond_1
    iget-object v1, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui_ex/recents/model/StringLruCache;

    invoke-virtual {v1, p1}, Lcom/android/systemui_ex/recents/model/StringLruCache;->getAndInvalidateIfModified(Lcom/android/systemui_ex/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 346
    .local v0, "label":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 350
    iget-object v1, p4, Lcom/android/systemui_ex/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    if-nez v1, :cond_2

    .line 351
    iget-object v1, p1, Lcom/android/systemui_ex/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget v2, p1, Lcom/android/systemui_ex/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p3, v1, v2}, Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iput-object v1, p4, Lcom/android/systemui_ex/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    .line 354
    :cond_2
    iget-object v1, p4, Lcom/android/systemui_ex/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_3

    .line 355
    iget-object v1, p4, Lcom/android/systemui_ex/recents/model/ActivityInfoHandle;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p3, v1}, Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;->getActivityLabel(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v0

    .line 356
    iget-object v1, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui_ex/recents/model/StringLruCache;

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui_ex/recents/model/StringLruCache;->put(Lcom/android/systemui_ex/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    goto :goto_0

    .line 358
    :cond_3
    const-string v1, "RecentsTaskLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing ActivityInfo for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/systemui_ex/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " u="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/systemui_ex/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAndUpdateThumbnail(Lcom/android/systemui_ex/recents/model/Task$TaskKey;Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;Z)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "taskKey"    # Lcom/android/systemui_ex/recents/model/Task$TaskKey;
    .param p2, "ssp"    # Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;
    .param p3, "loadIfNotCached"    # Z

    .prologue
    .line 404
    iget-object v2, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui_ex/recents/model/BitmapLruCache;

    invoke-virtual {v2, p1}, Lcom/android/systemui_ex/recents/model/BitmapLruCache;->getAndInvalidateIfModified(Lcom/android/systemui_ex/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 405
    .local v1, "thumbnail":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 419
    :goto_0
    return-object v2

    .line 409
    :cond_0
    invoke-static {}, Lcom/android/systemui_ex/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui_ex/recents/RecentsConfiguration;

    move-result-object v0

    .line 410
    .local v0, "config":Lcom/android/systemui_ex/recents/RecentsConfiguration;
    iget v2, v0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->svelteLevel:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_1

    if-eqz p3, :cond_1

    .line 412
    iget v2, p1, Lcom/android/systemui_ex/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p2, v2}, Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;->getTaskThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 413
    if-eqz v1, :cond_1

    .line 414
    iget-object v2, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui_ex/recents/model/BitmapLruCache;

    invoke-virtual {v2, p1, v1}, Lcom/android/systemui_ex/recents/model/BitmapLruCache;->put(Lcom/android/systemui_ex/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    move-object v2, v1

    .line 415
    goto :goto_0

    .line 419
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getApplicationIconCacheSize()I
    .locals 1

    .prologue
    .line 433
    iget v0, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    return v0
.end method

.method public getSystemServicesProxy()Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mSystemServicesProxy:Lcom/android/systemui_ex/recents/misc/SystemServicesProxy;

    return-object v0
.end method

.method public getThumbnailCacheSize()I
    .locals 1

    .prologue
    .line 438
    iget v0, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    return v0
.end method

.method public loadTaskData(Lcom/android/systemui_ex/recents/model/Task;)V
    .locals 5
    .param p1, "t"    # Lcom/android/systemui_ex/recents/model/Task;

    .prologue
    .line 471
    iget-object v3, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui_ex/recents/model/DrawableLruCache;

    iget-object v4, p1, Lcom/android/systemui_ex/recents/model/Task;->key:Lcom/android/systemui_ex/recents/model/Task$TaskKey;

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/recents/model/DrawableLruCache;->getAndInvalidateIfModified(Lcom/android/systemui_ex/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 472
    .local v0, "applicationIcon":Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui_ex/recents/model/BitmapLruCache;

    iget-object v4, p1, Lcom/android/systemui_ex/recents/model/Task;->key:Lcom/android/systemui_ex/recents/model/Task$TaskKey;

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/recents/model/BitmapLruCache;->getAndInvalidateIfModified(Lcom/android/systemui_ex/recents/model/Task$TaskKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 476
    .local v2, "thumbnail":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    if-nez v2, :cond_3

    :cond_0
    const/4 v1, 0x1

    .line 477
    .local v1, "requiresLoad":Z
    :goto_0
    if-eqz v0, :cond_4

    .line 478
    :goto_1
    if-eqz v1, :cond_1

    .line 479
    iget-object v3, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui_ex/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v3, p1}, Lcom/android/systemui_ex/recents/model/TaskResourceLoadQueue;->addTask(Lcom/android/systemui_ex/recents/model/Task;)V

    .line 481
    :cond_1
    iget-object v3, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mDefaultThumbnail:Landroid/graphics/Bitmap;

    if-ne v2, v3, :cond_2

    const/4 v2, 0x0

    .end local v2    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {p1, v2, v0}, Lcom/android/systemui_ex/recents/model/Task;->notifyTaskDataLoaded(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    .line 482
    return-void

    .line 476
    .end local v1    # "requiresLoad":Z
    .restart local v2    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 477
    .restart local v1    # "requiresLoad":Z
    :cond_4
    iget-object v0, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_1
.end method

.method public loadTasks(Landroid/content/Context;Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "plan"    # Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;
    .param p3, "opts"    # Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;

    .prologue
    .line 456
    if-nez p3, :cond_0

    .line 457
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Requires load options"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui_ex/recents/model/TaskResourceLoadQueue;

    invoke-virtual {p2, p3, p0, v0}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->executePlan(Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;Lcom/android/systemui_ex/recents/model/TaskResourceLoadQueue;)V

    .line 460
    iget-boolean v0, p3, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    if-nez v0, :cond_1

    .line 461
    iget v0, p3, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    iput v0, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mNumVisibleTasksLoaded:I

    .line 462
    iget v0, p3, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    iput v0, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mNumVisibleThumbnailsLoaded:I

    .line 465
    iget-object v0, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mLoader:Lcom/android/systemui_ex/recents/model/TaskResourceLoader;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/recents/model/TaskResourceLoader;->start(Landroid/content/Context;)V

    .line 467
    :cond_1
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 4
    .param p1, "level"    # I

    .prologue
    const/4 v3, 0x1

    .line 522
    invoke-static {}, Lcom/android/systemui_ex/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui_ex/recents/RecentsConfiguration;

    move-result-object v0

    .line 523
    .local v0, "config":Lcom/android/systemui_ex/recents/RecentsConfiguration;
    sparse-switch p1, :sswitch_data_0

    .line 561
    :goto_0
    return-void

    .line 526
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->stopLoader()V

    .line 527
    iget v1, v0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->svelteLevel:I

    if-nez v1, :cond_1

    .line 528
    iget-object v1, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui_ex/recents/model/BitmapLruCache;

    iget v2, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mNumVisibleTasksLoaded:I

    iget v3, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    div-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/recents/model/BitmapLruCache;->trimToSize(I)V

    .line 535
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui_ex/recents/model/DrawableLruCache;

    iget v2, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mNumVisibleTasksLoaded:I

    iget v3, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    div-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/recents/model/DrawableLruCache;->trimToSize(I)V

    goto :goto_0

    .line 530
    :cond_1
    iget v1, v0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->svelteLevel:I

    if-ne v1, v3, :cond_2

    .line 531
    iget-object v1, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui_ex/recents/model/BitmapLruCache;

    iget v2, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mNumVisibleThumbnailsLoaded:I

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/recents/model/BitmapLruCache;->trimToSize(I)V

    goto :goto_1

    .line 532
    :cond_2
    iget v1, v0, Lcom/android/systemui_ex/recents/RecentsConfiguration;->svelteLevel:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 533
    iget-object v1, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui_ex/recents/model/BitmapLruCache;

    invoke-virtual {v1}, Lcom/android/systemui_ex/recents/model/BitmapLruCache;->evictAll()V

    goto :goto_1

    .line 541
    :sswitch_1
    iget-object v1, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui_ex/recents/model/BitmapLruCache;

    iget v2, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    div-int/lit8 v2, v2, 0x2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/recents/model/BitmapLruCache;->trimToSize(I)V

    .line 542
    iget-object v1, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui_ex/recents/model/DrawableLruCache;

    iget v2, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    div-int/lit8 v2, v2, 0x2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/recents/model/DrawableLruCache;->trimToSize(I)V

    goto :goto_0

    .line 547
    :sswitch_2
    iget-object v1, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui_ex/recents/model/BitmapLruCache;

    iget v2, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mMaxThumbnailCacheSize:I

    div-int/lit8 v2, v2, 0x4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/recents/model/BitmapLruCache;->trimToSize(I)V

    .line 548
    iget-object v1, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui_ex/recents/model/DrawableLruCache;

    iget v2, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mMaxIconCacheSize:I

    div-int/lit8 v2, v2, 0x4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui_ex/recents/model/DrawableLruCache;->trimToSize(I)V

    goto :goto_0

    .line 553
    :sswitch_3
    iget-object v1, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mThumbnailCache:Lcom/android/systemui_ex/recents/model/BitmapLruCache;

    invoke-virtual {v1}, Lcom/android/systemui_ex/recents/model/BitmapLruCache;->evictAll()V

    .line 554
    iget-object v1, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mApplicationIconCache:Lcom/android/systemui_ex/recents/model/DrawableLruCache;

    invoke-virtual {v1}, Lcom/android/systemui_ex/recents/model/DrawableLruCache;->evictAll()V

    .line 556
    iget-object v1, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mActivityLabelCache:Lcom/android/systemui_ex/recents/model/StringLruCache;

    invoke-virtual {v1}, Lcom/android/systemui_ex/recents/model/StringLruCache;->evictAll()V

    goto/16 :goto_0

    .line 523
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0xa -> :sswitch_2
        0xf -> :sswitch_3
        0x14 -> :sswitch_0
        0x28 -> :sswitch_1
        0x3c -> :sswitch_2
        0x50 -> :sswitch_3
    .end sparse-switch
.end method

.method public preloadTasks(Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;Z)V
    .locals 0
    .param p1, "plan"    # Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;
    .param p2, "isTopTaskHome"    # Z

    .prologue
    .line 450
    invoke-virtual {p1, p0, p2}, Lcom/android/systemui_ex/recents/model/RecentsTaskLoadPlan;->preloadPlan(Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;Z)V

    .line 451
    return-void
.end method

.method public registerReceivers(Landroid/content/Context;Lcom/android/systemui_ex/recents/model/RecentsPackageMonitor$PackageCallbacks;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cb"    # Lcom/android/systemui_ex/recents/model/RecentsPackageMonitor$PackageCallbacks;

    .prologue
    .line 509
    iget-object v0, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mPackageMonitor:Lcom/android/systemui_ex/recents/model/RecentsPackageMonitor;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui_ex/recents/model/RecentsPackageMonitor;->register(Landroid/content/Context;Lcom/android/systemui_ex/recents/model/RecentsPackageMonitor$PackageCallbacks;)V

    .line 510
    return-void
.end method

.method stopLoader()V
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mLoader:Lcom/android/systemui_ex/recents/model/TaskResourceLoader;

    invoke-virtual {v0}, Lcom/android/systemui_ex/recents/model/TaskResourceLoader;->stop()V

    .line 503
    iget-object v0, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui_ex/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0}, Lcom/android/systemui_ex/recents/model/TaskResourceLoadQueue;->clearTasks()V

    .line 504
    return-void
.end method

.method public unloadTaskData(Lcom/android/systemui_ex/recents/model/Task;)V
    .locals 2
    .param p1, "t"    # Lcom/android/systemui_ex/recents/model/Task;

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mLoadQueue:Lcom/android/systemui_ex/recents/model/TaskResourceLoadQueue;

    invoke-virtual {v0, p1}, Lcom/android/systemui_ex/recents/model/TaskResourceLoadQueue;->removeTask(Lcom/android/systemui_ex/recents/model/Task;)V

    .line 487
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mDefaultApplicationIcon:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui_ex/recents/model/Task;->notifyTaskDataUnloaded(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V

    .line 488
    return-void
.end method

.method public unregisterReceivers()V
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/systemui_ex/recents/model/RecentsTaskLoader;->mPackageMonitor:Lcom/android/systemui_ex/recents/model/RecentsPackageMonitor;

    invoke-virtual {v0}, Lcom/android/systemui_ex/recents/model/RecentsPackageMonitor;->unregister()V

    .line 515
    return-void
.end method
