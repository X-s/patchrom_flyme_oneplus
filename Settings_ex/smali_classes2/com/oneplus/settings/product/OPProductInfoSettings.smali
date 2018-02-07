.class public Lcom/oneplus/settings/product/OPProductInfoSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "OPProductInfoSettings.java"


# instance fields
.field private final ONEPLUS_PRODUCT_INFO_INTRODUCE:Ljava/lang/String;

.field private final PKG_PRODUCT_INFO_INTRODUCE_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 18
    const-string/jumbo v0, "com.oneplus.noviceteaching"

    iput-object v0, p0, Lcom/oneplus/settings/product/OPProductInfoSettings;->PKG_PRODUCT_INFO_INTRODUCE_:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, "oneplus_product_info_introduce"

    iput-object v0, p0, Lcom/oneplus/settings/product/OPProductInfoSettings;->ONEPLUS_PRODUCT_INFO_INTRODUCE:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 29
    const/16 v0, 0x270f

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 24
    const v0, 0x7f080052

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/product/OPProductInfoSettings;->addPreferencesFromResource(I)V

    .line 22
    return-void
.end method
