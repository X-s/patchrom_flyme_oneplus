.class public final Lcom/oneplus/camera/AdvancedSettingsActivity;
.super Lcom/oneplus/base/BaseActivity;
.source "AdvancedSettingsActivity.java"

# interfaces
.implements Lcom/oneplus/camera/OnActionBarTitleChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/AdvancedSettingsActivity$AboutFragment;,
        Lcom/oneplus/camera/AdvancedSettingsActivity$AgreementFragment;,
        Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment;,
        Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-base-BaseActivity$ThemeModeSwitchesValues:[I = null

.field public static final EXTRA_IS_MIRROR_SUPPORTED:Ljava/lang/String; = "IsMirrorSupported"

.field public static final EXTRA_IS_RAW_CAPTURE_OPTION_VISIBLE:Ljava/lang/String; = "IsRawCaptureVisible"

.field public static final EXTRA_IS_SERVICE_MODE:Ljava/lang/String; = "IsServiceMode"

.field public static final EXTRA_IS_SMILE_CAPTURE_OPTION_VISIBLE:Ljava/lang/String; = "IsSmileCaptureVisible"

.field public static final EXTRA_OUTPUT_URI:Ljava/lang/String; = "OutputUri"

.field public static final EXTRA_SETTINGS_IS_VOLATILE:Ljava/lang/String; = "Settings.IsVolatile"

.field public static final EXTRA_SETTINGS_NAME:Ljava/lang/String; = "Settings.Name"

.field public static final EXTRA_START_MODE:Ljava/lang/String; = "StartMode"

.field private static final FRAGMENT_TAG_ALERT_DIALOG:Ljava/lang/String; = "AlertDialog"

.field private static final FRAGMENT_TAG_WATERMARK:Ljava/lang/String; = "Watermark"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private m_AboutMenuItem:Lcom/oneplus/camera/ui/menu/AboutMenuItem;

.field private m_ActionBar:Landroid/widget/Toolbar;

.field private m_ActionBarTitle:Landroid/widget/TextView;

.field private m_BackButton:Landroid/widget/ImageButton;

.field private m_HasRawCaptureSetting:Z

.field private m_HasSmileCaptureSetting:Z

.field private m_IsDarkMode:Z

.field private m_IsMirrorSupported:Z

.field private m_IsMirroredMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

.field private m_IsServiceMode:Z

.field private m_LocationMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

.field private final m_MenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/camera/ui/menu/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private m_MenuListView:Lcom/oneplus/camera/ui/menu/MenuListView;

.field private m_OutputUriStr:Ljava/lang/String;

.field private m_RawCaptureMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

.field private m_Settings:Lcom/oneplus/base/Settings;

.field private m_ShutdownReceiver:Landroid/content/BroadcastReceiver;

.field private m_ShutterSoundMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

.field private m_SmileCaptureMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

.field private m_StartMode:Lcom/oneplus/camera/StartMode;

.field private m_StorageManager:Lcom/oneplus/io/StorageManager;

.field private m_StorageManagerCallBack:Lcom/oneplus/base/PropertyChangedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyChangedCallback",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/io/Storage;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_StorageMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

.field private m_TemporaryStatusBarSpacingView:Landroid/view/View;

.field private m_VersionName:Ljava/lang/String;

.field private m_VideoFrameRateMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

.field private m_WatermarkMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/camera/AdvancedSettingsActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/oneplus/camera/AdvancedSettingsActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get2(Lcom/oneplus/camera/AdvancedSettingsActivity;)Lcom/oneplus/camera/ui/menu/MenuListView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuListView:Lcom/oneplus/camera/ui/menu/MenuListView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/oneplus/camera/AdvancedSettingsActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_VersionName:Ljava/lang/String;

    return-object v0
.end method

.method private static synthetic -getcom-oneplus-base-BaseActivity$ThemeModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/AdvancedSettingsActivity;->-com-oneplus-base-BaseActivity$ThemeModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/AdvancedSettingsActivity;->-com-oneplus-base-BaseActivity$ThemeModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/base/BaseActivity$ThemeMode;->values()[Lcom/oneplus/base/BaseActivity$ThemeMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/base/BaseActivity$ThemeMode;->ANDROID:Lcom/oneplus/base/BaseActivity$ThemeMode;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$ThemeMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/base/BaseActivity$ThemeMode;->DARK:Lcom/oneplus/base/BaseActivity$ThemeMode;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$ThemeMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/base/BaseActivity$ThemeMode;->LIGHT:Lcom/oneplus/base/BaseActivity$ThemeMode;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$ThemeMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/base/BaseActivity$ThemeMode;->UNKNOWN:Lcom/oneplus/base/BaseActivity$ThemeMode;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$ThemeMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/camera/AdvancedSettingsActivity;->-com-oneplus-base-BaseActivity$ThemeModeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/oneplus/camera/AdvancedSettingsActivity;Z)Z
    .locals 1
    .param p1, "checkEditText"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/AdvancedSettingsActivity;->closeWatermarkFragment(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/oneplus/camera/AdvancedSettingsActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->isSecureMode()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/oneplus/camera/AdvancedSettingsActivity;)Lcom/oneplus/base/Settings;
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getSettings()Lcom/oneplus/base/Settings;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/oneplus/camera/AdvancedSettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->disableLayoutFullscreen()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/oneplus/camera/AdvancedSettingsActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->handleStorageMenuItem()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/oneplus/camera/AdvancedSettingsActivity;Lcom/oneplus/camera/ui/menu/MenuItem;)V
    .locals 0
    .param p1, "menuItem"    # Lcom/oneplus/camera/ui/menu/MenuItem;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/AdvancedSettingsActivity;->onMenuItemClicked(Lcom/oneplus/camera/ui/menu/MenuItem;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 114
    const-class v0, Lcom/oneplus/camera/AdvancedSettingsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/camera/AdvancedSettingsActivity;->TAG:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/oneplus/base/BaseActivity;-><init>()V

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    .line 77
    return-void
.end method

.method private closeAboutFragment()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 776
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 777
    .local v1, "fragmentManager":Landroid/app/FragmentManager;
    if-nez v1, :cond_0

    .line 779
    sget-object v2, Lcom/oneplus/camera/AdvancedSettingsActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "closeAboutFragment() - Cannot find fragment manager"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    return v4

    .line 784
    :cond_0
    const-string/jumbo v2, "About"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 785
    .local v0, "aboutFragment":Landroid/app/Fragment;
    if-eqz v0, :cond_1

    .line 787
    sget-object v2, Lcom/oneplus/camera/AdvancedSettingsActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "closeAboutFragment() - About fragment: "

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 788
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 789
    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ActionBarTitle:Landroid/widget/TextView;

    const v3, 0x7f0b0001

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 790
    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuListView:Lcom/oneplus/camera/ui/menu/MenuListView;

    invoke-virtual {v2, v4}, Lcom/oneplus/camera/ui/menu/MenuListView;->setVisibility(I)V

    .line 791
    const/4 v2, 0x1

    return v2

    .line 795
    :cond_1
    return v4
.end method

.method private closeAgreementFragment()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 803
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 804
    .local v1, "fragmentManager":Landroid/app/FragmentManager;
    if-nez v1, :cond_0

    .line 806
    sget-object v2, Lcom/oneplus/camera/AdvancedSettingsActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "closeAgreementFragment() - Cannot find fragment manager"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    return v4

    .line 811
    :cond_0
    const-string/jumbo v2, "Agreement"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 812
    .local v0, "agreementFragment":Landroid/app/Fragment;
    if-eqz v0, :cond_1

    .line 814
    sget-object v2, Lcom/oneplus/camera/AdvancedSettingsActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "closeAgreementFragment() - Agreement fragment: "

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 815
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 816
    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ActionBarTitle:Landroid/widget/TextView;

    const v3, 0x7f0b000c

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 817
    const/4 v2, 0x1

    return v2

    .line 821
    :cond_1
    return v4
.end method

.method private closeWatermarkFragment(Z)Z
    .locals 7
    .param p1, "checkEditText"    # Z

    .prologue
    const/4 v6, 0x1

    .line 830
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 831
    .local v2, "fragmentManager":Landroid/app/FragmentManager;
    const-string/jumbo v4, "Watermark"

    invoke-virtual {v2, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 832
    .local v1, "fragment":Landroid/app/Fragment;
    if-nez v1, :cond_0

    .line 833
    const/4 v4, 0x0

    return v4

    :cond_0
    move-object v3, v1

    .line 834
    check-cast v3, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;

    .line 837
    .local v3, "watermarkFragment":Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;
    if-eqz p1, :cond_2

    invoke-virtual {v3}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->isEditTextEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 840
    const-string/jumbo v4, "AlertDialog"

    invoke-virtual {v2, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 841
    return v6

    .line 843
    :cond_1
    sget-object v4, Lcom/oneplus/camera/AdvancedSettingsActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "closeWatermarkFragment() - Edit text is empty"

    invoke-static {v4, v5}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    new-instance v0, Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment;

    invoke-direct {v0}, Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment;-><init>()V

    .line 847
    .local v0, "dialogFragment":Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment;
    const-string/jumbo v4, "AlertDialog"

    invoke-virtual {v0, v2, v4}, Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 865
    .end local v0    # "dialogFragment":Lcom/oneplus/camera/AdvancedSettingsActivity$AlertDialogFragment;
    :goto_0
    return v6

    .line 852
    :cond_2
    invoke-static {v3}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;->-wrap0(Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;)V

    .line 855
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 857
    const/16 v5, 0x1003

    .line 855
    invoke-virtual {v4, v5}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 861
    iget-object v4, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ActionBarTitle:Landroid/widget/TextView;

    const v5, 0x7f0b0001

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private disableLayoutFullscreen()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 873
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_TemporaryStatusBarSpacingView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_TemporaryStatusBarSpacingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 875
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    .line 876
    .local v0, "visibility":I
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    and-int/lit16 v2, v0, -0x401

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 877
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_TemporaryStatusBarSpacingView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 878
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ActionBar:Landroid/widget/Toolbar;

    invoke-virtual {v1}, Landroid/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 870
    .end local v0    # "visibility":I
    :cond_0
    return-void
.end method

.method private getSettings()Lcom/oneplus/base/Settings;
    .locals 1

    .prologue
    .line 886
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    return-object v0
.end method

.method private handleStorageMenuItem()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 893
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    sget-object v1, Lcom/oneplus/io/Storage$Type;->SD_CARD:Lcom/oneplus/io/Storage$Type;

    invoke-static {v0, v1}, Lcom/oneplus/io/StorageUtils;->findStorage(Lcom/oneplus/io/StorageManager;Lcom/oneplus/io/Storage$Type;)Lcom/oneplus/io/Storage;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 895
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    if-eqz v0, :cond_1

    .line 897
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->setStoragePosition()V

    .line 909
    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_OutputUriStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 910
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 891
    :cond_0
    :goto_1
    return-void

    .line 901
    :cond_1
    new-instance v0, Lcom/oneplus/camera/ui/menu/StorageMenuItem;

    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v2, "StorageType"

    iget-object v3, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/camera/ui/menu/StorageMenuItem;-><init>(Lcom/oneplus/base/Settings;Ljava/lang/String;Lcom/oneplus/io/StorageManager;)V

    iput-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    .line 902
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v1, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_TITLE:Lcom/oneplus/base/PropertyKey;

    const v2, 0x7f0b000b

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 903
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->setStoragePosition()V

    .line 905
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2
    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 914
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    if-eqz v0, :cond_4

    .line 916
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 918
    :cond_4
    iput-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    .line 919
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v1, "StorageType"

    sget-object v2, Lcom/oneplus/io/Storage$Type;->INTERNAL:Lcom/oneplus/io/Storage$Type;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/Settings;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private isSecureMode()Z
    .locals 3

    .prologue
    .line 927
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StartMode:Lcom/oneplus/camera/StartMode;

    if-nez v1, :cond_0

    .line 929
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 930
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "StartMode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/StartMode;

    iput-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StartMode:Lcom/oneplus/camera/StartMode;

    .line 932
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StartMode:Lcom/oneplus/camera/StartMode;

    sget-object v2, Lcom/oneplus/camera/StartMode;->SECURE_PHOTO:Lcom/oneplus/camera/StartMode;

    if-ne v1, v2, :cond_1

    .line 933
    const/4 v1, 0x1

    return v1

    .line 935
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private onMenuItemClicked(Lcom/oneplus/camera/ui/menu/MenuItem;)V
    .locals 7
    .param p1, "menuItem"    # Lcom/oneplus/camera/ui/menu/MenuItem;

    .prologue
    const/4 v4, 0x0

    .line 1055
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_WatermarkMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    if-ne p1, v0, :cond_1

    .line 1057
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->disableLayoutFullscreen()V

    .line 1058
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->openWatermarkFragment()V

    .line 1052
    :cond_0
    :goto_0
    return-void

    .line 1060
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_AboutMenuItem:Lcom/oneplus/camera/ui/menu/AboutMenuItem;

    if-ne p1, v0, :cond_0

    .line 1063
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    .line 1064
    .local v6, "fragmentManager":Landroid/app/FragmentManager;
    if-nez v6, :cond_2

    .line 1066
    sget-object v0, Lcom/oneplus/camera/AdvancedSettingsActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onMenuItemClicked() - Cannot find fragment manager"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    return-void

    .line 1071
    :cond_2
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuListView:Lcom/oneplus/camera/ui/menu/MenuListView;

    const-wide/16 v2, 0xc8

    new-instance v5, Lcom/oneplus/camera/AdvancedSettingsActivity$2;

    invoke-direct {v5, p0, v6}, Lcom/oneplus/camera/AdvancedSettingsActivity$2;-><init>(Lcom/oneplus/camera/AdvancedSettingsActivity;Landroid/app/FragmentManager;)V

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lcom/oneplus/widget/ViewUtils;->setVisibility(Landroid/view/View;ZJLandroid/view/animation/Interpolator;Lcom/oneplus/widget/ViewUtils$AnimationCompletedCallback;)V

    goto :goto_0
.end method

.method private openWatermarkFragment()V
    .locals 5

    .prologue
    .line 1144
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 1145
    .local v1, "fragmentManager":Landroid/app/FragmentManager;
    const-string/jumbo v2, "Watermark"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 1146
    .local v0, "fragment":Landroid/app/Fragment;
    if-nez v0, :cond_0

    .line 1148
    new-instance v0, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;

    .end local v0    # "fragment":Landroid/app/Fragment;
    invoke-direct {v0}, Lcom/oneplus/camera/AdvancedSettingsActivity$WatermarkFragment;-><init>()V

    .line 1149
    .restart local v0    # "fragment":Landroid/app/Fragment;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 1150
    const-string/jumbo v3, "Watermark"

    const v4, 0x7f09001c

    .line 1149
    invoke-virtual {v2, v4, v0, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 1151
    const/16 v3, 0x1003

    .line 1149
    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 1155
    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ActionBarTitle:Landroid/widget/TextView;

    const v3, 0x7f0b000d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1142
    :cond_0
    return-void
.end method

.method private registerReceivers()V
    .locals 4

    .prologue
    .line 1163
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->isSecureMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1165
    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ShutdownReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    .line 1167
    sget-object v2, Lcom/oneplus/camera/AdvancedSettingsActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "registerReceivers() - Shutdown receiver"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    new-instance v2, Lcom/oneplus/camera/AdvancedSettingsActivity$3;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$3;-><init>(Lcom/oneplus/camera/AdvancedSettingsActivity;)V

    iput-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 1182
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1183
    .local v0, "filterScreenOff":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1186
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.USER_PRESENT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1187
    .local v1, "filterUserUnlock":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/oneplus/camera/AdvancedSettingsActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1161
    .end local v0    # "filterScreenOff":Landroid/content/IntentFilter;
    .end local v1    # "filterUserUnlock":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private setStoragePosition()V
    .locals 5

    .prologue
    .line 1196
    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    iget-object v3, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    sget-object v4, Lcom/oneplus/io/Storage$Type;->INTERNAL:Lcom/oneplus/io/Storage$Type;

    invoke-static {v2, v3, v4}, Lcom/oneplus/io/StorageUtils;->findStorageFromSettings(Lcom/oneplus/io/StorageManager;Lcom/oneplus/base/Settings;Lcom/oneplus/io/Storage$Type;)Lcom/oneplus/io/Storage;

    move-result-object v1

    .line 1197
    .local v1, "storage":Lcom/oneplus/io/Storage;
    const/4 v0, 0x0

    .line 1198
    .local v0, "isChecked":Z
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/oneplus/io/Storage;->getType()Lcom/oneplus/io/Storage$Type;

    move-result-object v2

    sget-object v3, Lcom/oneplus/io/Storage$Type;->SD_CARD:Lcom/oneplus/io/Storage$Type;

    if-ne v2, v3, :cond_0

    invoke-interface {v1}, Lcom/oneplus/io/Storage;->isReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1199
    const/4 v0, 0x1

    .line 1200
    :cond_0
    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v3, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_IS_CHECKED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1194
    return-void
.end method

.method private setupMenuItems()V
    .locals 5

    .prologue
    .line 1208
    new-instance v0, Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;

    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v2, "Location.Save"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;-><init>(Lcom/oneplus/base/Settings;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_LocationMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    .line 1209
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_LocationMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v1, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_TITLE:Lcom/oneplus/base/PropertyKey;

    const v2, 0x7f0b0004

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1210
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_LocationMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1213
    new-instance v0, Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;

    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v2, "ShutterSound"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;-><init>(Lcom/oneplus/base/Settings;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ShutterSoundMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    .line 1214
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ShutterSoundMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v1, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_TITLE:Lcom/oneplus/base/PropertyKey;

    const v2, 0x7f0b0008

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1215
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ShutterSoundMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1218
    iget-boolean v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_IsServiceMode:Z

    if-nez v0, :cond_0

    .line 1220
    new-instance v0, Lcom/oneplus/camera/ui/menu/MenuItem;

    invoke-direct {v0}, Lcom/oneplus/camera/ui/menu/MenuItem;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_WatermarkMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    .line 1221
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_WatermarkMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v1, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_TITLE:Lcom/oneplus/base/PropertyKey;

    const v2, 0x7f0b000d

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1222
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_WatermarkMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v1, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_SUBTITLE:Lcom/oneplus/base/PropertyKey;

    const v2, 0x7f0b000f

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1223
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_WatermarkMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1227
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_HasRawCaptureSetting:Z

    if-eqz v0, :cond_1

    .line 1229
    new-instance v0, Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;

    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v2, "RawCapture"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;-><init>(Lcom/oneplus/base/Settings;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_RawCaptureMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    .line 1230
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_RawCaptureMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v1, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_TITLE:Lcom/oneplus/base/PropertyKey;

    const v2, 0x7f0b0007

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1231
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_RawCaptureMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1235
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_HasSmileCaptureSetting:Z

    if-eqz v0, :cond_2

    .line 1237
    new-instance v0, Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;

    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v2, "SmileCapture"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;-><init>(Lcom/oneplus/base/Settings;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_SmileCaptureMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    .line 1238
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_SmileCaptureMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v1, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_TITLE:Lcom/oneplus/base/PropertyKey;

    const v2, 0x7f0b0009

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1239
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_SmileCaptureMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1243
    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_IsMirrorSupported:Z

    if-eqz v0, :cond_3

    .line 1245
    new-instance v0, Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;

    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v2, "IsMirrored"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/ui/menu/BooleanSettingsMenuItem;-><init>(Lcom/oneplus/base/Settings;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_IsMirroredMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    .line 1246
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_IsMirroredMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v1, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_TITLE:Lcom/oneplus/base/PropertyKey;

    const v2, 0x7f0b0002

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1247
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_IsMirroredMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1251
    :cond_3
    new-instance v0, Lcom/oneplus/camera/ui/menu/AboutMenuItem;

    invoke-direct {v0, p0}, Lcom/oneplus/camera/ui/menu/AboutMenuItem;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_AboutMenuItem:Lcom/oneplus/camera/ui/menu/AboutMenuItem;

    .line 1252
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_AboutMenuItem:Lcom/oneplus/camera/ui/menu/AboutMenuItem;

    sget-object v1, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_TITLE:Lcom/oneplus/base/PropertyKey;

    const v2, 0x7f0b000c

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/ui/menu/AboutMenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1253
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_AboutMenuItem:Lcom/oneplus/camera/ui/menu/AboutMenuItem;

    sget-object v1, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_SUBTITLE:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_VersionName:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f0b005f

    invoke-virtual {p0, v3, v2}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/ui/menu/AboutMenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1254
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_AboutMenuItem:Lcom/oneplus/camera/ui/menu/AboutMenuItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1205
    return-void
.end method

.method private setupUI()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1262
    const-string/jumbo v6, "adv_settings_action_bar_background"

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v0

    .line 1263
    .local v0, "actionBarColor":I
    const v6, 0x7f090015

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/AdvancedSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Toolbar;

    iput-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ActionBar:Landroid/widget/Toolbar;

    .line 1264
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ActionBar:Landroid/widget/Toolbar;

    invoke-virtual {v6, v0}, Landroid/widget/Toolbar;->setBackgroundColor(I)V

    .line 1267
    const v6, 0x7f090019

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/AdvancedSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1268
    .local v2, "dividerView":Landroid/view/View;
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1273
    new-instance v3, Lcom/oneplus/base/ScreenSize;

    invoke-direct {v3, p0, v8}, Lcom/oneplus/base/ScreenSize;-><init>(Landroid/content/Context;Z)V

    .line 1274
    .local v3, "screenSize":Lcom/oneplus/base/ScreenSize;
    invoke-virtual {v3}, Lcom/oneplus/base/ScreenSize;->getStatusBarSize()I

    move-result v4

    .line 1275
    .local v4, "statusBarHeight":I
    const v6, 0x7f090014

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/AdvancedSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_TemporaryStatusBarSpacingView:Landroid/view/View;

    .line 1276
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_TemporaryStatusBarSpacingView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput v4, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1277
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_TemporaryStatusBarSpacingView:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1278
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ActionBar:Landroid/widget/Toolbar;

    invoke-virtual {v6}, Landroid/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v6, v7, v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 1281
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v5

    .line 1282
    .local v5, "visibility":I
    or-int/lit16 v5, v5, 0x400

    .line 1283
    invoke-static {}, Lcom/oneplus/camera/AdvancedSettingsActivity;->-getcom-oneplus-base-BaseActivity$ThemeModeSwitchesValues()[I

    move-result-object v7

    sget-object v6, Lcom/oneplus/camera/AdvancedSettingsActivity;->PROP_THEME_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/AdvancedSettingsActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/base/BaseActivity$ThemeMode;

    invoke-virtual {v6}, Lcom/oneplus/base/BaseActivity$ThemeMode;->ordinal()I

    move-result v6

    aget v6, v7, v6

    packed-switch v6, :pswitch_data_0

    .line 1294
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1295
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 1297
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->isSecureMode()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1298
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/high16 v7, 0x80000

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 1300
    :cond_0
    const v6, 0x7f090018

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/AdvancedSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ActionBarTitle:Landroid/widget/TextView;

    .line 1301
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ActionBarTitle:Landroid/widget/TextView;

    const-string/jumbo v7, "adv_settings_action_bar_title"

    invoke-virtual {p0, v7}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getThemeColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1302
    const v6, 0x7f090017

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/AdvancedSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_BackButton:Landroid/widget/ImageButton;

    .line 1303
    const-string/jumbo v6, "actionbar_button_back"

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getThemeDrawableResId(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1304
    .local v1, "backButtonDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->setAutoMirrored(Z)V

    .line 1305
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_BackButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1306
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_BackButton:Landroid/widget/ImageButton;

    new-instance v7, Lcom/oneplus/camera/AdvancedSettingsActivity$4;

    invoke-direct {v7, p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$4;-><init>(Lcom/oneplus/camera/AdvancedSettingsActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1315
    const v6, 0x7f09001b

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/AdvancedSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/oneplus/camera/ui/menu/MenuListView;

    iput-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuListView:Lcom/oneplus/camera/ui/menu/MenuListView;

    .line 1316
    iget-object v6, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuListView:Lcom/oneplus/camera/ui/menu/MenuListView;

    new-instance v7, Lcom/oneplus/camera/AdvancedSettingsActivity$5;

    invoke-direct {v7, p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$5;-><init>(Lcom/oneplus/camera/AdvancedSettingsActivity;)V

    invoke-virtual {v6, v7}, Lcom/oneplus/camera/ui/menu/MenuListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1259
    return-void

    .line 1287
    .end local v1    # "backButtonDrawable":Landroid/graphics/drawable/Drawable;
    :pswitch_0
    and-int/lit16 v5, v5, -0x2001

    .line 1288
    goto :goto_0

    .line 1291
    :pswitch_1
    or-int/lit16 v5, v5, 0x2000

    .line 1292
    goto :goto_0

    .line 1283
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private unregisterReceivers()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1330
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->isSecureMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1332
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ShutdownReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1334
    sget-object v0, Lcom/oneplus/camera/AdvancedSettingsActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterReceivers() - Shutdown receiver"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1335
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1336
    iput-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 1328
    :cond_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 942
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->closeAgreementFragment()Z

    move-result v0

    if-nez v0, :cond_0

    .line 943
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->closeAboutFragment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 940
    :cond_0
    :goto_0
    return-void

    .line 944
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->closeWatermarkFragment(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 945
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x0

    .line 954
    invoke-super {p0, p1}, Lcom/oneplus/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 956
    sget-object v2, Lcom/oneplus/camera/AdvancedSettingsActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onCreate() - Activity: "

    invoke-static {v2, v3, p0}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 958
    sget-object v2, Lcom/oneplus/camera/AdvancedSettingsActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/AdvancedSettingsActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_IsDarkMode:Z

    .line 959
    iget-boolean v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_IsDarkMode:Z

    if-eqz v2, :cond_2

    .line 960
    const v2, 0x7f0c000f

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/AdvancedSettingsActivity;->setTheme(I)V

    .line 965
    :goto_0
    const v2, 0x7f030004

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/AdvancedSettingsActivity;->setContentView(I)V

    .line 968
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->setupUI()V

    .line 971
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->registerReceivers()V

    .line 974
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 977
    .local v1, "extras":Landroid/os/Bundle;
    new-instance v2, Lcom/oneplus/base/Settings;

    const-string/jumbo v3, "Settings.Name"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Settings.IsVolatile"

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-direct {v2, p0, v3, v4}, Lcom/oneplus/base/Settings;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    .line 980
    const-string/jumbo v2, "IsRawCaptureVisible"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_HasRawCaptureSetting:Z

    .line 982
    const-string/jumbo v2, "OutputUri"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_OutputUriStr:Ljava/lang/String;

    .line 984
    invoke-static {}, Lcom/oneplus/camera/CameraApplication;->current()Lcom/oneplus/camera/CameraApplication;

    move-result-object v2

    const-class v3, Lcom/oneplus/io/StorageManager;

    invoke-virtual {v2, v3}, Lcom/oneplus/camera/CameraApplication;->findComponent(Ljava/lang/Class;)Lcom/oneplus/base/component/Component;

    move-result-object v2

    check-cast v2, Lcom/oneplus/io/StorageManager;

    iput-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    .line 985
    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    if-eqz v2, :cond_0

    .line 987
    new-instance v2, Lcom/oneplus/camera/AdvancedSettingsActivity$1;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/AdvancedSettingsActivity$1;-><init>(Lcom/oneplus/camera/AdvancedSettingsActivity;)V

    iput-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageManagerCallBack:Lcom/oneplus/base/PropertyChangedCallback;

    .line 996
    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    sget-object v3, Lcom/oneplus/io/StorageManager;->PROP_STORAGE_LIST:Lcom/oneplus/base/PropertyKey;

    iget-object v4, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageManagerCallBack:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v2, v3, v4}, Lcom/oneplus/io/StorageManager;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1000
    :cond_0
    const-string/jumbo v2, "IsMirrorSupported"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_IsMirrorSupported:Z

    .line 1003
    const-string/jumbo v2, "IsServiceMode"

    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_IsServiceMode:Z

    .line 1008
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_VersionName:Ljava/lang/String;

    .line 1010
    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_VersionName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v6, :cond_1

    .line 1012
    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_VersionName:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_VersionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1021
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->setupMenuItems()V

    .line 951
    return-void

    .line 962
    .end local v1    # "extras":Landroid/os/Bundle;
    :cond_2
    const v2, 0x7f0c0007

    invoke-virtual {p0, v2}, Lcom/oneplus/camera/AdvancedSettingsActivity;->setTheme(I)V

    goto/16 :goto_0

    .line 1016
    .restart local v1    # "extras":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 1017
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v2, Lcom/oneplus/camera/AdvancedSettingsActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onCreate - getPackageInfo failed"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 1029
    sget-object v0, Lcom/oneplus/camera/AdvancedSettingsActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDestroy() - Activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->unregisterReceivers()V

    .line 1035
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    if-eqz v0, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageManager:Lcom/oneplus/io/StorageManager;

    sget-object v1, Lcom/oneplus/io/StorageManager;->PROP_STORAGE_LIST:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_StorageManagerCallBack:Lcom/oneplus/base/PropertyChangedCallback;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/io/StorageManager;->removeCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 1039
    :cond_0
    invoke-super {p0}, Lcom/oneplus/base/BaseActivity;->onDestroy()V

    .line 1027
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1047
    invoke-super {p0, p1, p2}, Lcom/oneplus/base/BaseActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1093
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 1094
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 1095
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->finish()V

    .line 1096
    const/4 v1, 0x1

    return v1

    .line 1098
    :cond_0
    invoke-super {p0, p2}, Lcom/oneplus/base/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 1107
    iget-boolean v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_IsDarkMode:Z

    sget-object v0, Lcom/oneplus/camera/AdvancedSettingsActivity;->PROP_IS_BLACK_MODE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v1, v0, :cond_0

    .line 1108
    invoke-virtual {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->recreate()V

    .line 1111
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_LocationMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v1, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_IS_CHECKED:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v3, "Location.Save"

    invoke-virtual {v2, v3}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1112
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ShutterSoundMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v1, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_IS_CHECKED:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v3, "ShutterSound"

    invoke-virtual {v2, v3}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1113
    iget-boolean v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_HasRawCaptureSetting:Z

    if-eqz v0, :cond_1

    .line 1114
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_RawCaptureMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v1, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_IS_CHECKED:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v3, "RawCapture"

    invoke-virtual {v2, v3}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1115
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_HasSmileCaptureSetting:Z

    if-eqz v0, :cond_2

    .line 1116
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_SmileCaptureMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v1, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_IS_CHECKED:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v3, "SmileCapture"

    invoke-virtual {v2, v3}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1119
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/camera/AdvancedSettingsActivity;->handleStorageMenuItem()V

    .line 1122
    iget-boolean v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_IsMirrorSupported:Z

    if-eqz v0, :cond_3

    .line 1123
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_IsMirroredMenuItem:Lcom/oneplus/camera/ui/menu/MenuItem;

    sget-object v1, Lcom/oneplus/camera/ui/menu/MenuItem;->PROP_IS_CHECKED:Lcom/oneplus/base/PropertyKey;

    iget-object v2, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_Settings:Lcom/oneplus/base/Settings;

    const-string/jumbo v3, "IsMirrored"

    invoke-virtual {v2, v3}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/camera/ui/menu/MenuItem;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 1126
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuListView:Lcom/oneplus/camera/ui/menu/MenuListView;

    iget-object v1, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_MenuItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/ui/menu/MenuListView;->setMenuItems(Ljava/util/List;)V

    .line 1128
    invoke-super {p0}, Lcom/oneplus/base/BaseActivity;->onResume()V

    .line 1104
    return-void
.end method

.method public onTitleChanged(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ActionBarTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1137
    iget-object v0, p0, Lcom/oneplus/camera/AdvancedSettingsActivity;->m_ActionBarTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1134
    :cond_0
    return-void
.end method
