.class Lcom/oneplus/settings/OPHomeSettings$1;
.super Ljava/lang/Object;
.source "OPHomeSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPHomeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPHomeSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPHomeSettings;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/oneplus/settings/OPHomeSettings$1;->this$0:Lcom/oneplus/settings/OPHomeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 98
    .local v0, "index":I
    iget-object v2, p0, Lcom/oneplus/settings/OPHomeSettings$1;->this$0:Lcom/oneplus/settings/OPHomeSettings;

    # getter for: Lcom/oneplus/settings/OPHomeSettings;->mPrefs:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/oneplus/settings/OPHomeSettings;->access$200(Lcom/oneplus/settings/OPHomeSettings;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;

    .line 99
    .local v1, "pref":Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;
    iget-boolean v2, v1, Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;->isChecked:Z

    if-nez v2, :cond_0

    .line 100
    iget-object v2, p0, Lcom/oneplus/settings/OPHomeSettings$1;->this$0:Lcom/oneplus/settings/OPHomeSettings;

    invoke-virtual {v2, v1}, Lcom/oneplus/settings/OPHomeSettings;->makeCurrentHome(Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;)V

    .line 102
    :cond_0
    return-void
.end method
