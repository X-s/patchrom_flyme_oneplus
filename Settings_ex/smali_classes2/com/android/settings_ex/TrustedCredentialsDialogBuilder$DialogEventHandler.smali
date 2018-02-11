.class Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;
.super Ljava/lang/Object;
.source "TrustedCredentialsDialogBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/TrustedCredentialsDialogBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DialogEventHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler$-void_onClickTrust__LambdaImpl0;
    }
.end annotation


# static fields
.field private static final IN_DURATION_MS:J = 0xc8L

.field private static final OUT_DURATION_MS:J = 0x12cL


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mCertHolders:[Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

.field private mCurrentCertIndex:I

.field private mCurrentCertLayout:Landroid/view/View;

.field private final mDelegate:Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DelegateInterface;

.field private mDialog:Landroid/app/AlertDialog;

.field private final mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mNeedsApproval:Z

.field private mNegativeButton:Landroid/widget/Button;

.field private mPositiveButton:Landroid/widget/Button;

.field private final mRootContainer:Landroid/widget/LinearLayout;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;)Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DelegateInterface;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDelegate:Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DelegateInterface;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mRootContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;Landroid/view/View;)V
    .locals 0
    .param p1, "nextCertLayout"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->addAndAnimateNewContent(Landroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->nextOrDismiss()V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DelegateInterface;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "delegate"    # Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DelegateInterface;

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertIndex:I

    .line 104
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    iput-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCertHolders:[Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertLayout:Landroid/view/View;

    .line 108
    iput-object p1, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    .line 109
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 110
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mUserManager:Landroid/os/UserManager;

    .line 111
    iput-object p2, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDelegate:Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DelegateInterface;

    .line 113
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mRootContainer:Landroid/widget/LinearLayout;

    .line 114
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mRootContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 107
    return-void
.end method

.method private addAndAnimateNewContent(Landroid/view/View;)V
    .locals 2
    .param p1, "nextCertLayout"    # Landroid/view/View;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertLayout:Landroid/view/View;

    .line 354
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mRootContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 355
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mRootContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 357
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mRootContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler$4;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler$4;-><init>(Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 352
    return-void
.end method

.method private animateOldContent(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 344
    const/4 v1, 0x0

    .line 343
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 345
    const-wide/16 v2, 0x12c

    .line 343
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 346
    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    .line 347
    const v2, 0x10c000f

    .line 346
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 343
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 341
    return-void
.end method

.method private animateViewTransition(Landroid/view/View;)V
    .locals 1
    .param p1, "nextCertView"    # Landroid/view/View;

    .prologue
    .line 333
    new-instance v0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler$3;

    invoke-direct {v0, p0, p1}, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler$3;-><init>(Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->animateOldContent(Ljava/lang/Runnable;)V

    .line 332
    return-void
.end method

.method private static getButtonConfirmation(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)I
    .locals 1
    .param p0, "certHolder"    # Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->isSystemCert()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    const v0, 0x7f0e0d28

    .line 318
    :goto_0
    return v0

    .line 320
    :cond_0
    const v0, 0x7f0e0d29

    goto :goto_0

    .line 321
    :cond_1
    const v0, 0x7f0e0d2a

    goto :goto_0
.end method

.method private static getButtonLabel(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)I
    .locals 1
    .param p0, "certHolder"    # Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->isSystemCert()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->isDeleted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    const v0, 0x7f0e0d25

    .line 325
    :goto_0
    return v0

    .line 327
    :cond_0
    const v0, 0x7f0e0d24

    goto :goto_0

    .line 328
    :cond_1
    const v0, 0x7f0e0d26

    goto :goto_0
.end method

.method private getCertLayout(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)Landroid/widget/LinearLayout;
    .locals 14
    .param p1, "certHolder"    # Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    .prologue
    const/4 v12, 0x0

    .line 273
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v10, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v9, "titles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v11, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDelegate:Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DelegateInterface;

    invoke-interface {v11, p1}, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DelegateInterface;->getX509CertsFromCertHolder(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)Ljava/util/List;

    move-result-object v5

    .line 276
    .local v5, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    if-eqz v5, :cond_0

    .line 277
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "certificate$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 278
    .local v2, "certificate":Ljava/security/cert/X509Certificate;
    new-instance v8, Landroid/net/http/SslCertificate;

    invoke-direct {v8, v2}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 279
    .local v8, "sslCert":Landroid/net/http/SslCertificate;
    iget-object v11, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v8, v11}, Landroid/net/http/SslCertificate;->inflateCertificateView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    invoke-virtual {v8}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 284
    .end local v2    # "certificate":Ljava/security/cert/X509Certificate;
    .end local v3    # "certificate$iterator":Ljava/util/Iterator;
    .end local v8    # "sslCert":Landroid/net/http/SslCertificate;
    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v11, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    .line 285
    const v13, 0x1090008

    .line 284
    invoke-direct {v0, v11, v13, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 287
    .local v0, "arrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v11, 0x1090009

    invoke-virtual {v0, v11}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 288
    new-instance v7, Landroid/widget/Spinner;

    iget-object v11, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    invoke-direct {v7, v11}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 289
    .local v7, "spinner":Landroid/widget/Spinner;
    invoke-virtual {v7, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 290
    new-instance v11, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler$2;

    invoke-direct {v11, p0, v10}, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler$2;-><init>(Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;Ljava/util/ArrayList;)V

    invoke-virtual {v7, v11}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 304
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 305
    .local v1, "certLayout":Landroid/widget/LinearLayout;
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 306
    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 307
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v6, v11, :cond_2

    .line 308
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 310
    .local v4, "certificateView":Landroid/view/View;
    if-nez v6, :cond_1

    move v11, v12

    :goto_2
    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 311
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 307
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 310
    :cond_1
    const/16 v11, 0x8

    goto :goto_2

    .line 314
    .end local v4    # "certificateView":Landroid/view/View;
    :cond_2
    return-object v1
.end method

.method private getCurrentCertInfo()Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;
    .locals 2

    .prologue
    .line 184
    iget v0, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertIndex:I

    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCertHolders:[Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCertHolders:[Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    iget v1, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertIndex:I

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUserSecure(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 208
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 209
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    const/4 v2, 0x1

    return v2

    .line 212
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 213
    .local v1, "parentUser":Landroid/content/pm/UserInfo;
    if-nez v1, :cond_1

    .line 214
    const/4 v2, 0x0

    return v2

    .line 216
    :cond_1
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    return v2
.end method

.method private nextOrDismiss()V
    .locals 2

    .prologue
    .line 188
    iget v0, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertIndex:I

    .line 190
    :goto_0
    iget v0, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertIndex:I

    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCertHolders:[Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->getCurrentCertInfo()Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 191
    iget v0, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertIndex:I

    goto :goto_0

    .line 194
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertIndex:I

    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCertHolders:[Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 195
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 196
    return-void

    .line 199
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->updateViewContainer()V

    .line 200
    invoke-direct {p0}, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->updatePositiveButton()V

    .line 201
    invoke-direct {p0}, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->updateNegativeButton()V

    .line 187
    return-void
.end method

.method private onClickOk()V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->nextOrDismiss()V

    .line 145
    return-void
.end method

.method private onClickRemove()V
    .locals 4

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->getCurrentCertInfo()Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    .line 160
    .local v0, "certHolder":Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 161
    invoke-static {v0}, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->getButtonConfirmation(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)I

    move-result v2

    .line 160
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 163
    new-instance v2, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler$1;

    invoke-direct {v2, p0, v0}, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler$1;-><init>(Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)V

    .line 162
    const v3, 0x1040013

    .line 160
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 171
    const v2, 0x1040009

    const/4 v3, 0x0

    .line 160
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 158
    return-void
.end method

.method private onClickTrust()V
    .locals 5

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->getCurrentCertInfo()Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    .line 151
    .local v0, "certHolder":Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;
    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDelegate:Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DelegateInterface;

    invoke-virtual {v0}, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->getUserId()I

    move-result v2

    .line 152
    new-instance v3, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler$-void_onClickTrust__LambdaImpl0;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler$-void_onClickTrust__LambdaImpl0;-><init>(Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;)V

    .line 151
    invoke-interface {v1, v2, v3}, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DelegateInterface;->startConfirmCredentialIfNotConfirmed(ILjava/util/function/IntConsumer;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->getUserId()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/admin/DevicePolicyManager;->approveCaCert(Ljava/lang/String;IZ)Z

    .line 154
    invoke-direct {p0}, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->nextOrDismiss()V

    .line 149
    :cond_0
    return-void
.end method

.method private onCredentialConfirmed(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mNeedsApproval:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->getCurrentCertInfo()Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    invoke-direct {p0}, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->getCurrentCertInfo()Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->getUserId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 179
    invoke-direct {p0}, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->onClickTrust()V

    .line 175
    :cond_0
    return-void
.end method

.method private updateButton(ILjava/lang/CharSequence;)Landroid/widget/Button;
    .locals 3
    .param p1, "buttonType"    # I
    .param p2, "displayText"    # Ljava/lang/CharSequence;

    .prologue
    .line 251
    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v2, p1, p2, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 252
    iget-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 253
    .local v0, "button":Landroid/widget/Button;
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 254
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    return-object v0
.end method

.method private updateNegativeButton()V
    .locals 7

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->getCurrentCertInfo()Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    .line 237
    .local v0, "certHolder":Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;
    iget-object v3, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mUserManager:Landroid/os/UserManager;

    .line 238
    const-string/jumbo v4, "no_config_credentials"

    .line 239
    new-instance v5, Landroid/os/UserHandle;

    invoke-virtual {v0}, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->getUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 237
    invoke-virtual {v3, v4, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    .line 240
    .local v2, "showRemoveButton":Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->getButtonLabel(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 241
    .local v1, "displayText":Ljava/lang/CharSequence;
    const/4 v3, -0x2

    invoke-direct {p0, v3, v1}, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->updateButton(ILjava/lang/CharSequence;)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mNegativeButton:Landroid/widget/Button;

    .line 242
    iget-object v4, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mNegativeButton:Landroid/widget/Button;

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 235
    return-void

    .line 237
    .end local v1    # "displayText":Ljava/lang/CharSequence;
    .end local v2    # "showRemoveButton":Z
    :cond_0
    const/4 v2, 0x1

    .restart local v2    # "showRemoveButton":Z
    goto :goto_0

    .line 242
    .restart local v1    # "displayText":Ljava/lang/CharSequence;
    :cond_1
    const/16 v3, 0x8

    goto :goto_1
.end method

.method private updatePositiveButton()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 220
    invoke-direct {p0}, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->getCurrentCertInfo()Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    .line 221
    .local v0, "certHolder":Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;
    invoke-virtual {v0}, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->isSystemCert()Z

    move-result v4

    if-nez v4, :cond_0

    .line 222
    invoke-virtual {v0}, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->getUserId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->isUserSecure(I)Z

    move-result v4

    .line 221
    if-eqz v4, :cond_0

    .line 223
    iget-object v4, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->getAlias()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->getUserId()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/app/admin/DevicePolicyManager;->isCaCertApproved(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 221
    :cond_0
    :goto_0
    iput-boolean v3, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mNeedsApproval:Z

    .line 226
    iget-object v3, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;->getUserId()I

    move-result v4

    .line 225
    invoke-static {v3, v4}, Lcom/android/settings_exlib/RestrictedLockUtils;->getProfileOrDeviceOwner(Landroid/content/Context;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    .line 229
    .local v2, "isProfileOrDeviceOwner":Z
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mActivity:Landroid/app/Activity;

    if-nez v2, :cond_3

    iget-boolean v3, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mNeedsApproval:Z

    if-eqz v3, :cond_3

    .line 230
    const v3, 0x7f0e0d27

    .line 229
    :goto_2
    invoke-virtual {v4, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 232
    .local v1, "displayText":Ljava/lang/CharSequence;
    const/4 v3, -0x1

    invoke-direct {p0, v3, v1}, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->updateButton(ILjava/lang/CharSequence;)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mPositiveButton:Landroid/widget/Button;

    .line 219
    return-void

    .line 223
    .end local v1    # "displayText":Ljava/lang/CharSequence;
    .end local v2    # "isProfileOrDeviceOwner":Z
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 225
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "isProfileOrDeviceOwner":Z
    goto :goto_1

    .line 231
    :cond_3
    const v3, 0x104000a

    goto :goto_2
.end method

.method private updateViewContainer()V
    .locals 4

    .prologue
    .line 260
    invoke-direct {p0}, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->getCurrentCertInfo()Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    move-result-object v0

    .line 261
    .local v0, "certHolder":Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;
    invoke-direct {p0, v0}, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->getCertLayout(Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 264
    .local v1, "nextCertLayout":Landroid/widget/LinearLayout;
    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertLayout:Landroid/view/View;

    if-nez v2, :cond_0

    .line 265
    iput-object v1, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertLayout:Landroid/view/View;

    .line 266
    iget-object v2, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mRootContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCurrentCertLayout:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 259
    :goto_0
    return-void

    .line 268
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->animateViewTransition(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method synthetic -com_android_settings_TrustedCredentialsDialogBuilder$DialogEventHandler-mthref-0(I)V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->onCredentialConfirmed(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mPositiveButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 135
    iget-boolean v0, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mNeedsApproval:Z

    if-eqz v0, :cond_1

    .line 136
    invoke-direct {p0}, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->onClickTrust()V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->onClickOk()V

    goto :goto_0

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mNegativeButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->onClickRemove()V

    goto :goto_0
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->nextOrDismiss()V

    .line 126
    return-void
.end method

.method public setCertHolders([Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;)V
    .locals 0
    .param p1, "certHolder"    # [Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mCertHolders:[Lcom/android/settings_ex/TrustedCredentialsSettings$CertHolder;

    .line 121
    return-void
.end method

.method public setDialog(Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/settings_ex/TrustedCredentialsDialogBuilder$DialogEventHandler;->mDialog:Landroid/app/AlertDialog;

    .line 117
    return-void
.end method
