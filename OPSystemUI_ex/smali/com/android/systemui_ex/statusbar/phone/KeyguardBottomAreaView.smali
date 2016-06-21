.class public Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;
.super Landroid/widget/FrameLayout;
.source "KeyguardBottomAreaView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/systemui_ex/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;
.implements Lcom/android/systemui_ex/statusbar/policy/AccessibilityController$AccessibilityStateChangedCallback;


# static fields
.field private static final INSECURE_CAMERA_INTENT:Landroid/content/Intent;

.field private static final PHONE_INTENT:Landroid/content/Intent;

.field private static final SECURE_CAMERA_INTENT:Landroid/content/Intent;


# instance fields
.field private mAccessibilityController:Lcom/android/systemui_ex/statusbar/policy/AccessibilityController;

.field private mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private mActivityStarter:Lcom/android/systemui_ex/statusbar/phone/ActivityStarter;

.field private mCameraImageView:Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

.field private mCameraPreview:Landroid/view/View;

.field private final mDevicePolicyReceiver:Landroid/content/BroadcastReceiver;

.field private mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

.field private mFingerprintErrorAnimation:Landroid/view/animation/Animation;

.field private mFlashlightController:Lcom/android/systemui_ex/statusbar/policy/FlashlightController;

.field private mIndicationController:Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

.field private mIndicationText:Landroid/widget/TextView;

.field private mLastUnlockIconRes:I

.field private final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mLockIcon:Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPhoneImageView:Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

.field private mPhonePreview:Landroid/view/View;

.field private mPhoneStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

.field private mPreviewContainer:Landroid/view/ViewGroup;

.field private mPreviewInflater:Lcom/android/systemui_ex/statusbar/policy/PreviewInflater;

.field private final mTrustDrawable:Lcom/android/systemui_ex/statusbar/phone/TrustDrawable;

.field private mUnlockMethodCache:Lcom/android/systemui_ex/statusbar/phone/UnlockMethodCache;

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 78
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->PHONE_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 127
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 132
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mLastUnlockIconRes:I

    .line 138
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView$1;-><init>(Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 558
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView$2;-><init>(Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mDevicePolicyReceiver:Landroid/content/BroadcastReceiver;

    .line 569
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView$3;-><init>(Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 631
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    const v1, 0x7f05000f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mFingerprintErrorAnimation:Landroid/view/animation/Animation;

    .line 133
    new-instance v0, Lcom/android/systemui_ex/statusbar/phone/TrustDrawable;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/TrustDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mTrustDrawable:Lcom/android/systemui_ex/statusbar/phone/TrustDrawable;

    .line 134
    const v0, 0x10c000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mCameraImageView:Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mPhoneImageView:Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mPhoneStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method private getCameraIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 246
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    .line 247
    .local v1, "updateMonitor":Lcom/android/keyguard/KeyguardUpdateMonitor;
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    .line 249
    .local v0, "currentUserHasTrust":Z
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    sget-object v2, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    :goto_0
    return-object v2

    :cond_0
    sget-object v2, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    goto :goto_0
.end method

.method private handleTrustCircleClick()V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mIndicationController:Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    const v1, 0x7f0c0184

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;->showTransientIndication(I)V

    .line 351
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V

    .line 352
    return-void
.end method

.method private inflatePreviews()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 508
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mPreviewInflater:Lcom/android/systemui_ex/statusbar/policy/PreviewInflater;

    sget-object v1, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->PHONE_INTENT:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/PreviewInflater;->inflatePreview(Landroid/content/Intent;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mPhonePreview:Landroid/view/View;

    .line 509
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mPreviewInflater:Lcom/android/systemui_ex/statusbar/policy/PreviewInflater;

    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->getCameraIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/policy/PreviewInflater;->inflatePreview(Landroid/content/Intent;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mCameraPreview:Landroid/view/View;

    .line 510
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mPhonePreview:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mPhonePreview:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 512
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mPhonePreview:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mCameraPreview:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 515
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mPreviewContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mCameraPreview:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 516
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mCameraPreview:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 518
    :cond_1
    return-void
.end method

.method private initAccessibility()V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method private isCameraDisabledByDpm()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 276
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "device_policy"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 278
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz v2, :cond_1

    .line 280
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-interface {v7}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v7

    iget v4, v7, Landroid/content/pm/UserInfo;->id:I

    .line 281
    .local v4, "userId":I
    const/4 v7, 0x0

    invoke-virtual {v2, v7, v4}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    .line 282
    .local v1, "disabledFlags":I
    and-int/lit8 v7, v1, 0x2

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mPhoneStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v7}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->isKeyguardSecure()Z

    move-result v7

    if-eqz v7, :cond_2

    move v0, v6

    .line 285
    .local v0, "disabledBecauseKeyguardSecure":Z
    :goto_0
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v5, v6

    .line 290
    .end local v0    # "disabledBecauseKeyguardSecure":Z
    .end local v1    # "disabledFlags":I
    .end local v4    # "userId":I
    :cond_1
    :goto_1
    return v5

    .restart local v1    # "disabledFlags":I
    .restart local v4    # "userId":I
    :cond_2
    move v0, v5

    .line 282
    goto :goto_0

    .line 286
    .end local v1    # "disabledFlags":I
    .end local v4    # "userId":I
    :catch_0
    move-exception v3

    .line 287
    .local v3, "e":Landroid/os/RemoteException;
    const-string v6, "PhoneStatusBar/KeyguardBottomAreaView"

    const-string v7, "Can\'t get userId"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private updateCameraVisibility()V
    .locals 6

    .prologue
    .line 254
    iget-object v2, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->getCameraIntent()Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x10000

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 258
    .local v0, "resolved":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->isCameraDisabledByDpm()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_0
    const/4 v1, 0x0

    .line 261
    .local v1, "visible":Z
    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mCameraImageView:Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;->setVisibility(I)V

    .line 262
    return-void

    .line 261
    :cond_1
    const/16 v2, 0x8

    goto :goto_0
.end method

.method private updateLockIcon()V
    .locals 0

    .prologue
    .line 464
    return-void
.end method


# virtual methods
.method public getCameraPreview()Landroid/view/View;
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mCameraPreview:Landroid/view/View;

    return-object v0
.end method

.method public getCameraView()Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mCameraImageView:Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

    return-object v0
.end method

.method public getIndicationView()Landroid/view/View;
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mIndicationText:Landroid/widget/TextView;

    return-object v0
.end method

.method public getLockIcon()Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

    return-object v0
.end method

.method public getPhonePreview()Landroid/view/View;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mPhonePreview:Landroid/view/View;

    return-object v0
.end method

.method public getPhoneView()Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mPhoneImageView:Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 494
    const/4 v0, 0x0

    return v0
.end method

.method public launchCamera()V
    .locals 7

    .prologue
    .line 355
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mFlashlightController:Lcom/android/systemui_ex/statusbar/policy/FlashlightController;

    invoke-virtual {v4}, Lcom/android/systemui_ex/statusbar/policy/FlashlightController;->killFlashlight()V

    .line 356
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->getCameraIntent()Landroid/content/Intent;

    move-result-object v1

    .line 357
    .local v1, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v5

    invoke-static {v4, v1, v5}, Lcom/android/systemui_ex/statusbar/policy/PreviewInflater;->wouldLaunchResolverActivity(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v3

    .line 360
    .local v3, "wouldLaunchResolverActivity":Z
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 362
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v4, "com.oneplus.camera"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 363
    sget-object v4, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    if-ne v1, v4, :cond_0

    .line 364
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.oneplus.camera"

    const-string v6, "com.oneplus.camera.MainActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :goto_0
    sget-object v4, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    if-ne v1, v4, :cond_1

    .line 378
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 385
    :goto_1
    return-void

    .line 367
    :cond_0
    :try_start_1
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.oneplus.camera"

    const-string v6, "com.oneplus.camera.OPCameraActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "PhoneStatusBar/KeyguardBottomAreaView"

    const-string v5, "no op camera"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.android.camera2"

    const-string v6, "com.android.camera.CameraActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 383
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mActivityStarter:Lcom/android/systemui_ex/statusbar/phone/ActivityStarter;

    const/4 v5, 0x0

    invoke-interface {v4, v1, v5}, Lcom/android/systemui_ex/statusbar/phone/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    goto :goto_1
.end method

.method public launchPhone()V
    .locals 0

    .prologue
    .line 401
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mCameraImageView:Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

    if-ne p1, v0, :cond_2

    .line 329
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->launchCamera()V

    .line 332
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

    if-ne p1, v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityController:Lcom/android/systemui_ex/statusbar/policy/AccessibilityController;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/policy/AccessibilityController;->isAccessibilityEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 334
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->handleTrustCircleClick()V

    .line 340
    :cond_1
    :goto_1
    return-void

    .line 330
    :cond_2
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mPhoneImageView:Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

    if-ne p1, v0, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->launchPhone()V

    goto :goto_0

    .line 336
    :cond_3
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mPhoneStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(IZ)V

    goto :goto_1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 211
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 226
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 428
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 429
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mTrustDrawable:Lcom/android/systemui_ex/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/TrustDrawable;->stop()V

    .line 430
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 174
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 175
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 176
    const v0, 0x7f0f0049

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mPreviewContainer:Landroid/view/ViewGroup;

    .line 177
    const v0, 0x7f0f004a

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mCameraImageView:Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

    .line 178
    const v0, 0x7f0f004b

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mPhoneImageView:Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

    .line 179
    const v0, 0x7f0f004c

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

    .line 180
    const v0, 0x7f0f0048

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mIndicationText:Landroid/widget/TextView;

    .line 181
    const v0, 0x7f0f0054

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/EmergencyButton;

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    .line 185
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui_ex/statusbar/phone/UnlockMethodCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mUnlockMethodCache:Lcom/android/systemui_ex/statusbar/phone/UnlockMethodCache;

    .line 186
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mUnlockMethodCache:Lcom/android/systemui_ex/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0, p0}, Lcom/android/systemui_ex/statusbar/phone/UnlockMethodCache;->addListener(Lcom/android/systemui_ex/statusbar/phone/UnlockMethodCache$OnUnlockMethodChangedListener;)V

    .line 189
    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->setClipChildren(Z)V

    .line 190
    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->setClipToPadding(Z)V

    .line 191
    new-instance v0, Lcom/android/systemui_ex/statusbar/policy/PreviewInflater;

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Lcom/android/systemui_ex/statusbar/policy/PreviewInflater;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mPreviewInflater:Lcom/android/systemui_ex/statusbar/policy/PreviewInflater;

    .line 192
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->inflatePreviews()V

    .line 193
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;

    invoke-virtual {v0, p0}, Lcom/android/systemui_ex/statusbar/KeyguardAffordanceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->initAccessibility()V

    .line 199
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 345
    const/4 v0, 0x1

    return v0
.end method

.method public onStateChanged(ZZ)V
    .locals 0
    .param p1, "accessibilityEnabled"    # Z
    .param p2, "touchExplorationEnabled"    # Z

    .prologue
    .line 310
    return-void
.end method

.method public onUnlockMethodStateChanged()V
    .locals 0

    .prologue
    .line 505
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 406
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 408
    if-eqz p2, :cond_0

    .line 409
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mPhoneStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mPhoneStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->setCameraLauchingInProgress(Z)V

    .line 415
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 416
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mTrustDrawable:Lcom/android/systemui_ex/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/TrustDrawable;->start()V

    .line 420
    :goto_0
    if-ne p1, p0, :cond_1

    if-nez p2, :cond_1

    .line 421
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->updateLockIcon()V

    .line 422
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    .line 424
    :cond_1
    return-void

    .line 418
    :cond_2
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mTrustDrawable:Lcom/android/systemui_ex/statusbar/phone/TrustDrawable;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/TrustDrawable;->stop()V

    goto :goto_0
.end method

.method public setAccessibilityController(Lcom/android/systemui_ex/statusbar/policy/AccessibilityController;)V
    .locals 0
    .param p1, "accessibilityController"    # Lcom/android/systemui_ex/statusbar/policy/AccessibilityController;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mAccessibilityController:Lcom/android/systemui_ex/statusbar/policy/AccessibilityController;

    .line 238
    invoke-virtual {p1, p0}, Lcom/android/systemui_ex/statusbar/policy/AccessibilityController;->addStateChangedCallback(Lcom/android/systemui_ex/statusbar/policy/AccessibilityController$AccessibilityStateChangedCallback;)V

    .line 239
    return-void
.end method

.method public setActivityStarter(Lcom/android/systemui_ex/statusbar/phone/ActivityStarter;)V
    .locals 0
    .param p1, "activityStarter"    # Lcom/android/systemui_ex/statusbar/phone/ActivityStarter;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mActivityStarter:Lcom/android/systemui_ex/statusbar/phone/ActivityStarter;

    .line 230
    return-void
.end method

.method public setFlashlightController(Lcom/android/systemui_ex/statusbar/policy/FlashlightController;)V
    .locals 0
    .param p1, "flashlightController"    # Lcom/android/systemui_ex/statusbar/policy/FlashlightController;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mFlashlightController:Lcom/android/systemui_ex/statusbar/policy/FlashlightController;

    .line 234
    return-void
.end method

.method public setKeyguardIndicationController(Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;)V
    .locals 0
    .param p1, "keyguardIndicationController"    # Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    .prologue
    .line 635
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mIndicationController:Lcom/android/systemui_ex/statusbar/KeyguardIndicationController;

    .line 636
    return-void
.end method

.method public setPhoneStatusBar(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "phoneStatusBar"    # Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/KeyguardBottomAreaView;->mPhoneStatusBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    .line 243
    return-void
.end method

.method public startFinishDozeAnimation()V
    .locals 2

    .prologue
    .line 528
    const-wide/16 v0, 0x0

    .line 545
    .local v0, "delay":J
    return-void
.end method
