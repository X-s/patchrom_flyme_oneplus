.class Lcom/android/settings_ex/print/PrintServiceSettingsFragment$2;
.super Ljava/lang/Object;
.source "PrintServiceSettingsFragment.java"

# interfaces
.implements Lcom/android/settings_ex/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->initComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/print/PrintServiceSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/print/PrintServiceSettingsFragment;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$2;->this$0:Lcom/android/settings_ex/print/PrintServiceSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings_ex/widget/ToggleSwitch;Z)Z
    .locals 2
    .param p1, "toggleSwitch"    # Lcom/android/settings_ex/widget/ToggleSwitch;
    .param p2, "checked"    # Z

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$2;->this$0:Lcom/android/settings_ex/print/PrintServiceSettingsFragment;

    iget-object v1, p0, Lcom/android/settings_ex/print/PrintServiceSettingsFragment$2;->this$0:Lcom/android/settings_ex/print/PrintServiceSettingsFragment;

    invoke-static {v1}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->-get2(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/settings_ex/print/PrintServiceSettingsFragment;->-wrap0(Lcom/android/settings_ex/print/PrintServiceSettingsFragment;Ljava/lang/String;Z)V

    .line 270
    const/4 v0, 0x0

    return v0
.end method
