.class public Lcom/oneplus/tuner/MainActivity1;
.super Lcom/oneplus/tuner/base/TabBaseActivity;
.source "MainActivity1.java"

# interfaces
.implements Lcom/oneplus/tuner/listener/HeadsetPlugReceiver$HeadsetPlugListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isLoginCallback:Lcom/oppo/tribune/RomLoginUtils$ILoginCallback;

.field private loginSwitch:Z

.field private mController:Lcom/oneplus/tuner/fragment/ControllerFragment;

.field mPersonalView:Lcom/oneplus/tuner/view/PersonalView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/oneplus/tuner/MainActivity1;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/tuner/MainActivity1;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/oneplus/tuner/base/TabBaseActivity;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/tuner/MainActivity1;->loginSwitch:Z

    .line 111
    new-instance v0, Lcom/oneplus/tuner/MainActivity1$3;

    invoke-direct {v0, p0}, Lcom/oneplus/tuner/MainActivity1$3;-><init>(Lcom/oneplus/tuner/MainActivity1;)V

    iput-object v0, p0, Lcom/oneplus/tuner/MainActivity1;->isLoginCallback:Lcom/oppo/tribune/RomLoginUtils$ILoginCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/tuner/MainActivity1;)Lcom/oneplus/tuner/fragment/ControllerFragment;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/tuner/MainActivity1;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oneplus/tuner/MainActivity1;->mController:Lcom/oneplus/tuner/fragment/ControllerFragment;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/oneplus/tuner/MainActivity1;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected configCurrentSelectedSlideMenuIndex()V
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/tuner/MainActivity1;->mSlideMenuSelectedIndex:I

    .line 204
    return-void
.end method

.method protected configIsSlideMenuEnable()V
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/tuner/MainActivity1;->mIsSlideMenuEnable:Z

    .line 173
    iput-object p0, p0, Lcom/oneplus/tuner/MainActivity1;->mActivity:Landroid/app/Activity;

    .line 174
    return-void
.end method

.method protected configIsTitlebarMenuEnable()V
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/tuner/MainActivity1;->mIsTitlebarMenuEnable:Z

    .line 190
    return-void
.end method

.method protected configIsTitlebarOnlyOneMenuItem()V
    .locals 2

    .prologue
    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/tuner/MainActivity1;->mIsTitlebarOnlyOneMenuItem:Z

    .line 195
    const v0, 0x7f0200df

    iput v0, p0, Lcom/oneplus/tuner/MainActivity1;->mMenuOneIconId:I

    .line 196
    const v0, 0x7f0200e1

    iput v0, p0, Lcom/oneplus/tuner/MainActivity1;->mMenuTwoIconId:I

    .line 197
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oneplus/tuner/MixerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/oneplus/tuner/MainActivity1;->mMenuOneIntent:Landroid/content/Intent;

    .line 198
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oneplus/tuner/OnePlusSearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/oneplus/tuner/MainActivity1;->mMenuTwoIntent:Landroid/content/Intent;

    .line 199
    return-void
.end method

.method protected getFragments()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 134
    .local v0, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    new-instance v1, Lcom/oneplus/tuner/OPCommonStyleFragment;

    invoke-direct {v1}, Lcom/oneplus/tuner/OPCommonStyleFragment;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v1, Lcom/oneplus/tuner/fragment/RecommendFragment;

    invoke-direct {v1}, Lcom/oneplus/tuner/fragment/RecommendFragment;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v1, Lcom/oneplus/tuner/fragment/AllConfigFragment;

    invoke-direct {v1}, Lcom/oneplus/tuner/fragment/AllConfigFragment;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    return-object v0
.end method

.method protected getTitles()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 144
    .local v0, "titles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const v1, 0x7f0c0707

    invoke-virtual {p0, v1}, Lcom/oneplus/tuner/MainActivity1;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    const v1, 0x7f0c0708

    invoke-virtual {p0, v1}, Lcom/oneplus/tuner/MainActivity1;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    const v1, 0x7f0c0709

    invoke-virtual {p0, v1}, Lcom/oneplus/tuner/MainActivity1;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/oneplus/tuner/base/TabBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/oneplus/tuner/MainActivity1;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c055e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oneplus/tuner/MainActivity1;->setTitle(Ljava/lang/CharSequence;)V

    .line 43
    invoke-static {}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getPermissionTipEnabled()Z

    move-result v2

    .line 44
    .local v2, "enabled":Z
    const-string v3, "tuner_permission_network"

    invoke-static {v3}, Lcom/oneplus/tuner/providers/AudioTunerPreference;->getPermissionEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 47
    .local v0, "allow":Z
    invoke-static {}, Lcom/oneplus/tuner/widget/FloatWindow;->needInit()V

    .line 49
    if-eqz v2, :cond_1

    .line 51
    invoke-static {p0}, Lcom/oneplus/tuner/utillty/DialogUtility;->createPermissionTipDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v1

    .line 52
    .local v1, "dialog":Landroid/app/Dialog;
    new-instance v3, Lcom/oneplus/tuner/MainActivity1$1;

    invoke-direct {v3, p0}, Lcom/oneplus/tuner/MainActivity1$1;-><init>(Lcom/oneplus/tuner/MainActivity1;)V

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 76
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 109
    .end local v1    # "dialog":Landroid/app/Dialog;
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    if-nez v0, :cond_0

    .line 80
    invoke-static {p0}, Lcom/oneplus/tuner/utillty/DialogUtility;->createRejectPermissionTipDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v1

    .line 81
    .restart local v1    # "dialog":Landroid/app/Dialog;
    new-instance v3, Lcom/oneplus/tuner/MainActivity1$2;

    invoke-direct {v3, p0}, Lcom/oneplus/tuner/MainActivity1$2;-><init>(Lcom/oneplus/tuner/MainActivity1;)V

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 105
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 162
    invoke-static {}, Lcom/oneplus/tuner/widget/FloatWindow;->needInit()V

    .line 163
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->clearSoundEffectDataChangeListeners()V

    .line 164
    invoke-static {}, Lcom/oneplus/tuner/manager/OppoTunerManager;->unregisterSoundEffectUsedDataChangeListener()V

    .line 166
    invoke-super {p0}, Lcom/oneplus/tuner/base/TabBaseActivity;->onDestroy()V

    .line 167
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 156
    invoke-super {p0}, Lcom/oneplus/tuner/base/TabBaseActivity;->onResume()V

    .line 157
    return-void
.end method

.method public startConfigEffectActivity()V
    .locals 2

    .prologue
    .line 183
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oneplus/tuner/MixerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 184
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/oneplus/tuner/MainActivity1;->startActivity(Landroid/content/Intent;)V

    .line 185
    return-void
.end method

.method public startSearchActivity()V
    .locals 2

    .prologue
    .line 177
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oneplus/tuner/OppoSearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 179
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/tuner/MainActivity1;->startActivityForResult(Landroid/content/Intent;I)V

    .line 180
    return-void
.end method
