.class Lcom/android/settings_ex/SettingsPreferenceFragment$2;
.super Ljava/lang/Object;
.source "SettingsPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/SettingsPreferenceFragment;->highlightPreference(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/SettingsPreferenceFragment;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/settings_ex/SettingsPreferenceFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/SettingsPreferenceFragment;
    .param p2, "val$position"    # I

    .prologue
    .line 435
    iput-object p1, p0, Lcom/android/settings_ex/SettingsPreferenceFragment$2;->this$0:Lcom/android/settings_ex/SettingsPreferenceFragment;

    iput p2, p0, Lcom/android/settings_ex/SettingsPreferenceFragment$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment$2;->this$0:Lcom/android/settings_ex/SettingsPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->-get0(Lcom/android/settings_ex/SettingsPreferenceFragment;)Lcom/android/settings_ex/SettingsPreferenceFragment$HighlightablePreferenceGroupAdapter;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/SettingsPreferenceFragment$2;->val$position:I

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SettingsPreferenceFragment$HighlightablePreferenceGroupAdapter;->highlight(I)V

    .line 437
    return-void
.end method
