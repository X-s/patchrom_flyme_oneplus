.class Lcom/oneplus/settings/others/OPOthersSettings$1;
.super Landroid/database/ContentObserver;
.source "OPOthersSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/others/OPOthersSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/others/OPOthersSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/others/OPOthersSettings;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/others/OPOthersSettings;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/oneplus/settings/others/OPOthersSettings$1;->this$0:Lcom/oneplus/settings/others/OPOthersSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 75
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 76
    iget-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings$1;->this$0:Lcom/oneplus/settings/others/OPOthersSettings;

    invoke-static {v1}, Lcom/oneplus/settings/others/OPOthersSettings;->-wrap0(Lcom/oneplus/settings/others/OPOthersSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "oneplus_otg_auto_disable"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 77
    .local v0, "enable":Z
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings$1;->this$0:Lcom/oneplus/settings/others/OPOthersSettings;

    invoke-static {v1}, Lcom/oneplus/settings/others/OPOthersSettings;->-get1(Lcom/oneplus/settings/others/OPOthersSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 78
    iget-object v1, p0, Lcom/oneplus/settings/others/OPOthersSettings$1;->this$0:Lcom/oneplus/settings/others/OPOthersSettings;

    invoke-static {v1}, Lcom/oneplus/settings/others/OPOthersSettings;->-get1(Lcom/oneplus/settings/others/OPOthersSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 74
    :cond_0
    return-void

    .line 76
    .end local v0    # "enable":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "enable":Z
    goto :goto_0
.end method
