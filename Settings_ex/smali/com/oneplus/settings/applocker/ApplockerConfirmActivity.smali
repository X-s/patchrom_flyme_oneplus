.class public Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;
.super Landroid/app/Activity;
.source "ApplockerConfirmActivity.java"

# interfaces
.implements Lcom/android/settings_ex/CredentialCheckResultTracker$Listener;
.implements Lcom/android/settings_ex/fingerprint/FingerprintUiHelper$Callback;
.implements Lcom/android/settings_exlib/animation/AppearAnimationCreator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Lcom/android/settings_ex/CredentialCheckResultTracker$Listener;",
        "Lcom/android/settings_ex/fingerprint/FingerprintUiHelper$Callback;",
        "Lcom/android/settings_exlib/animation/AppearAnimationCreator",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final APP_LOCKER:Ljava/lang/String; = "OP_APP_LOCKER"

.field public static final APP_LOCKER_BLOCKING_APP:Ljava/lang/String; = "OP_APP_LOCKER_BLOCKING_APP"

.field public static final APP_LOCKER_COMPONENT:Ljava/lang/String; = "OP_APP_LOCKER_COMPONENT"

.field public static final APP_LOCKER_PACKAGE:Ljava/lang/String; = "OP_APP_LOCKER_PACKAGE"

.field public static final COLUMN_COMPONENT:Ljava/lang/String; = "componentName"

.field public static final COLUMN_ICON:Ljava/lang/String; = "icon"

.field public static final COLUMN_ROWID:Ljava/lang/String; = "rowid"

.field public static final ERROR_MESSAGE_TIMEOUT:J = 0xbb8L

.field public static final FAILED_ATTEMPTS_BEFORE_TIMEOUT:I = 0x5

.field public static final FRAGMENT_TAG_CHECK_LOCK_RESULT:Ljava/lang/String; = "check_lock_result"

.field public static final KEY_NUM_WRONG_CONFIRM_ATTEMPTS:Ljava/lang/String; = "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

.field public static final KEY_TIME_WRONG_CONFIRM_ATTEMPTS:Ljava/lang/String; = "confirm_lock_password_fragment.key_time_wrong_confirm_attempts"

.field public static final LOCKOUT_TIME_OUT:I = 0x7530

.field private static final NONUI_MSG_GET_BITMAP:I = 0x1

.field public static final TAG:Ljava/lang/String; = "ApplockerActivity"

.field private static final UI_MSG_GET_COLOR_AND_SETBACKGROUND:I = 0x1000

.field private static final UI_MSG_REGISTER_FINGERPRINT:I = 0x2000

.field private static mIsFromAppLocker:Z

.field public static mPreferences:Landroid/content/SharedPreferences;


# instance fields
.field mAm:Landroid/app/ActivityManager;

.field public mAppearAnimationUtils:Lcom/android/settings_exlib/animation/AppearAnimationUtils;

.field private mBackgroundMaskColor:I

.field private mBlockingApp:I

.field private mComponent:Ljava/lang/String;

.field public mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

.field public mDisappearAnimationUtils:Lcom/android/settings_exlib/animation/DisappearAnimationUtils;

.field public mEffectiveUserId:I

.field public mFingerprintHelper:Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;

.field public mFingerprintIcon:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field public mHasFocus:Z

.field public mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNonUIHandler:Landroid/os/Handler;

.field public mNumWrongConfirmAttempts:I

.field public mPackageIcon:Landroid/widget/ImageView;

.field private mPackageName:Ljava/lang/String;

.field public mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<***>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->getColorAndSetBackground(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;

    .prologue
    .line 47
    iget v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mBackgroundMaskColor:I

    return v0
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 287
    const/4 v0, 0x0

    .line 289
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->isOPHomeExist()Z

    move-result v2

    if-nez v2, :cond_1

    .line 290
    invoke-direct {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->getIconFromPM()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 291
    .local v1, "d":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v1, :cond_0

    .line 292
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 304
    .end local v1    # "d":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    :goto_0
    return-object v0

    .line 295
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->getPackageIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 296
    if-nez v0, :cond_0

    .line 297
    invoke-direct {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->getIconFromPM()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 298
    .restart local v1    # "d":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v1, :cond_0

    .line 299
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private getColorAndSetBackground(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 259
    const-string v0, "ApplockerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getColorAndSetBackground: mIcon = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mPackageIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mPackageIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    const-string v0, "ApplockerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getColorAndSetBackground: bitmap = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    if-eqz p1, :cond_0

    .line 265
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mPackageIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 266
    invoke-static {p1}, Landroid/support/v7/graphics/Palette;->from(Landroid/graphics/Bitmap;)Landroid/support/v7/graphics/Palette$Builder;

    move-result-object v0

    new-instance v1, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity$3;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity$3;-><init>(Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/graphics/Palette$Builder;->generate(Landroid/support/v7/graphics/Palette$PaletteAsyncListener;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private getIconFromPM()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 308
    const-string v1, "ApplockerActivity"

    const-string v2, "getIconFromPM"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 312
    :goto_0
    return-object v1

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPackageIcon()Landroid/graphics/Bitmap;
    .locals 12

    .prologue
    const/4 v4, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    .line 317
    const-string v0, "content://com.oneplus.launcher.IconProvider/data"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 318
    .local v1, "CONTENT_URI":Landroid/net/Uri;
    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "icon"

    aput-object v0, v2, v3

    .line 319
    .local v2, "projection":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 320
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    const-string v0, "ApplockerActivity"

    const-string v3, "getPackageIcon"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "componentName=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v11, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mComponent:Ljava/lang/String;

    aput-object v11, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 326
    .local v8, "cursor":Landroid/database/Cursor;
    if-nez v8, :cond_0

    move-object v0, v10

    .line 345
    .end local v8    # "cursor":Landroid/database/Cursor;
    :goto_0
    return-object v0

    .line 330
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 331
    const-string v0, "icon"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 333
    .local v6, "b":[B
    if-eqz v6, :cond_1

    .line 334
    const/4 v0, 0x0

    array-length v3, v6

    invoke-static {v6, v0, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 337
    :cond_1
    if-eqz v8, :cond_2

    .line 338
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move-object v0, v7

    .line 345
    goto :goto_0

    .line 340
    .end local v6    # "b":[B
    .end local v8    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 341
    .local v9, "e":Ljava/lang/Exception;
    const-string v0, "ApplockerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPackageIcon: Exception e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v10

    .line 342
    goto :goto_0
.end method

.method public static isFromAppLocker()Z
    .locals 1

    .prologue
    .line 393
    sget-boolean v0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mIsFromAppLocker:Z

    return v0
.end method

.method private shouldFinishSelf()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 125
    iget-object v3, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mEffectiveUserId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v3

    if-nez v3, :cond_0

    .line 126
    const-string v3, "ApplockerActivity"

    const-string v4, "shouldFinishSelf: no security"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p0, v7}, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->setResult(I)V

    .line 128
    invoke-virtual {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->finish()V

    .line 132
    :cond_0
    iget-object v3, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mAm:Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManager;->getMaxRecentTasksStatic()I

    move-result v4

    const/16 v5, 0xf

    iget v6, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mEffectiveUserId:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v2

    .line 138
    .local v2, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-nez v2, :cond_2

    .line 154
    :cond_1
    return-void

    .line 142
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 144
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 145
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 146
    .local v1, "t":Landroid/app/ActivityManager$RecentTaskInfo;
    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mPackageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 147
    iget-boolean v3, v1, Landroid/app/ActivityManager$RecentTaskInfo;->isTopAppLocked:Z

    if-nez v3, :cond_3

    .line 148
    const-string v3, "ApplockerActivity"

    const-string v4, "shouldFinishSelf: the lock in settings has been removed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {p0, v7}, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->setResult(I)V

    .line 150
    invoke-virtual {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->finish()V

    goto :goto_0
.end method

.method private startHandlderThread()V
    .locals 3

    .prologue
    .line 165
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ThreadBackground"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 166
    .local v0, "h":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 167
    new-instance v1, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity$1;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity$1;-><init>(Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mNonUIHandler:Landroid/os/Handler;

    .line 182
    new-instance v1, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity$2;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity$2;-><init>(Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;)V

    iput-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mHandler:Landroid/os/Handler;

    .line 196
    return-void
.end method


# virtual methods
.method public createAnimation(Ljava/lang/Object;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "delay"    # J
    .param p4, "duration"    # J
    .param p6, "translationY"    # F
    .param p7, "appearing"    # Z
    .param p8, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p9, "finishListener"    # Ljava/lang/Runnable;

    .prologue
    .line 418
    return-void
.end method

.method public getBlockingApp()I
    .locals 1

    .prologue
    .line 389
    iget v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mBlockingApp:I

    return v0
.end method

.method public getUnlockPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public isFingerprintListening()Z
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mFingerprintHelper:Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->isListening()Z

    move-result v0

    return v0
.end method

.method public isOPHomeExist()Z
    .locals 5

    .prologue
    .line 350
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 351
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    invoke-virtual {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 353
    .local v1, "res":Landroid/content/pm/ResolveInfo;
    const-string v2, "ApplockerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOPHomeExist: current home = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_0

    const-string v2, "com.oneplus.launcher"

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 356
    const/4 v2, 0x1

    .line 358
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public launchHome()V
    .locals 2

    .prologue
    .line 378
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 379
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 381
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->startActivity(Landroid/content/Intent;)V

    .line 382
    return-void
.end method

.method public onAuthenticated()V
    .locals 5

    .prologue
    .line 200
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    const/4 v1, 0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/4 v3, 0x0

    iget v4, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mEffectiveUserId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings_ex/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    .line 203
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-direct {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->startHandlderThread()V

    .line 104
    const/4 v1, 0x1

    sput-boolean v1, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mIsFromAppLocker:Z

    .line 105
    invoke-virtual {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "OP_APP_LOCKER_BLOCKING_APP"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mBlockingApp:I

    .line 106
    invoke-virtual {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "OP_APP_LOCKER_COMPONENT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mComponent:Ljava/lang/String;

    .line 107
    new-instance v1, Lcom/android/settings_ex/CredentialCheckResultTracker;

    invoke-direct {v1}, Lcom/android/settings_ex/CredentialCheckResultTracker;-><init>()V

    iput-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    .line 108
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mAm:Landroid/app/ActivityManager;

    .line 109
    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mComponent:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mComponent:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "s":[Ljava/lang/String;
    aget-object v1, v0, v3

    iput-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mPackageName:Ljava/lang/String;

    .line 113
    .end local v0    # "s":[Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0086

    invoke-virtual {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mBackgroundMaskColor:I

    .line 114
    return-void
.end method

.method public onCredentialChecked(ZLandroid/content/Intent;II)V
    .locals 0
    .param p1, "matched"    # Z
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "timeoutMs"    # I
    .param p4, "effectiveUserId"    # I

    .prologue
    .line 213
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 398
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 399
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mIsFromAppLocker:Z

    .line 400
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mNonUIHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mNonUIHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 407
    :cond_1
    return-void
.end method

.method public onFingerprintIconVisibilityChanged(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 207
    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mFingerprintIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 208
    return-void

    .line 207
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 363
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 364
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 365
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "OP_APP_LOCKER_BLOCKING_APP"

    iget v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mBlockingApp:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 366
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->setResult(ILandroid/content/Intent;)V

    .line 367
    const-string v1, "ApplockerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown: back key pressed, hash code = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mBlockingApp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    iget v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mBlockingApp:I

    if-nez v1, :cond_0

    .line 369
    invoke-virtual {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->launchHome()V

    .line 371
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->finish()V

    .line 372
    const/4 v1, 0x1

    .line 374
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 217
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 219
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    invoke-virtual {v0}, Lcom/android/settings_ex/CredentialCheckResultTracker;->clearResult()V

    .line 225
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mCredentialCheckResultTracker:Lcom/android/settings_ex/CredentialCheckResultTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/CredentialCheckResultTracker;->setListener(Lcom/android/settings_ex/CredentialCheckResultTracker$Listener;)V

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mFingerprintHelper:Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;

    if-eqz v0, :cond_2

    .line 229
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mFingerprintHelper:Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->stopListening()V

    .line 230
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mFingerprintHelper:Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->setAppLockerRegistering(Z)V

    .line 234
    :cond_2
    sget-object v0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_3

    .line 235
    sget-object v0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "confirm_lock_password_fragment.key_num_wrong_confirm_attempts"

    iget v2, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mNumWrongConfirmAttempts:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 239
    :cond_3
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 118
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 119
    invoke-direct {p0}, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->shouldFinishSelf()V

    .line 120
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 243
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 244
    iput-boolean p1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mHasFocus:Z

    .line 245
    return-void
.end method

.method public registerFingerprintDelayed()V
    .locals 4

    .prologue
    .line 157
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mFingerprintHelper:Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x2000

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 160
    iget-object v0, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mFingerprintHelper:Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/fingerprint/FingerprintUiHelper;->setAppLockerRegistering(Z)V

    .line 162
    :cond_0
    return-void
.end method

.method public setBackgroundColor()V
    .locals 4

    .prologue
    .line 248
    const-string v1, "ApplockerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBackgroundColor: component = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mComponent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mComponent:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 256
    :goto_0
    return-void

    .line 254
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mNonUIHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 255
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/oneplus/settings/applocker/ApplockerConfirmActivity;->mNonUIHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
