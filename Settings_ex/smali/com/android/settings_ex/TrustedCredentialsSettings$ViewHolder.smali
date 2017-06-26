.class Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field private mSubjectPrimaryView:Landroid/widget/TextView;

.field private mSubjectSecondaryView:Landroid/widget/TextView;

.field private mSwitch:Lcom/oneplus/widget/button/OPSwitch;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/TrustedCredentialsSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/TrustedCredentialsSettings$1;

    .prologue
    .line 626
    invoke-direct {p0}, Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;-><init>()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;->mSubjectPrimaryView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 626
    iput-object p1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;->mSubjectPrimaryView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;->mSubjectSecondaryView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 626
    iput-object p1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;->mSubjectSecondaryView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;)Lcom/oneplus/widget/button/OPSwitch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;->mSwitch:Lcom/oneplus/widget/button/OPSwitch;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;Lcom/oneplus/widget/button/OPSwitch;)Lcom/oneplus/widget/button/OPSwitch;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;
    .param p1, "x1"    # Lcom/oneplus/widget/button/OPSwitch;

    .prologue
    .line 626
    iput-object p1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$ViewHolder;->mSwitch:Lcom/oneplus/widget/button/OPSwitch;

    return-object p1
.end method
