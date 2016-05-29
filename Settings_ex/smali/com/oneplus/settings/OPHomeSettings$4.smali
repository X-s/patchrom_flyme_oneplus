.class Lcom/oneplus/settings/OPHomeSettings$4;
.super Ljava/lang/Object;
.source "OPHomeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OPHomeSettings;->makeCurrentHome(Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;)V
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
    .line 174
    iput-object p1, p0, Lcom/oneplus/settings/OPHomeSettings$4;->this$0:Lcom/oneplus/settings/OPHomeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 177
    iget-object v0, p0, Lcom/oneplus/settings/OPHomeSettings$4;->this$0:Lcom/oneplus/settings/OPHomeSettings;

    # getter for: Lcom/oneplus/settings/OPHomeSettings;->mCurrentHome:Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;
    invoke-static {v0}, Lcom/oneplus/settings/OPHomeSettings;->access$300(Lcom/oneplus/settings/OPHomeSettings;)Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/oneplus/settings/OPHomeSettings$4;->this$0:Lcom/oneplus/settings/OPHomeSettings;

    # getter for: Lcom/oneplus/settings/OPHomeSettings;->mCurrentHome:Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;
    invoke-static {v0}, Lcom/oneplus/settings/OPHomeSettings;->access$300(Lcom/oneplus/settings/OPHomeSettings;)Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ui/OPHomeAppRadioPreference;->setChecked(Z)V

    .line 180
    :cond_0
    return-void
.end method
