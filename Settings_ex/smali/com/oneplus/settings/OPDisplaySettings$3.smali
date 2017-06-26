.class Lcom/oneplus/settings/OPDisplaySettings$3;
.super Ljava/lang/Object;
.source "OPDisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OPDisplaySettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPDisplaySettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPDisplaySettings;)V
    .locals 0

    .prologue
    .line 648
    iput-object p1, p0, Lcom/oneplus/settings/OPDisplaySettings$3;->this$0:Lcom/oneplus/settings/OPDisplaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/oneplus/settings/OPDisplaySettings$3;->this$0:Lcom/oneplus/settings/OPDisplaySettings;

    # getter for: Lcom/oneplus/settings/OPDisplaySettings;->mFontSizePref:Lcom/android/settings_ex/WarnedListPreference;
    invoke-static {v0}, Lcom/oneplus/settings/OPDisplaySettings;->access$100(Lcom/oneplus/settings/OPDisplaySettings;)Lcom/android/settings_ex/WarnedListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_ex/WarnedListPreference;->click()V

    .line 651
    return-void
.end method
