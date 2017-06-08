.class Lcom/android/settings_ex/SettingsPreferenceFragment$1;
.super Landroid/database/DataSetObserver;
.source "SettingsPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/SettingsPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/SettingsPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/SettingsPreferenceFragment;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/settings_ex/SettingsPreferenceFragment$1;->this$0:Lcom/android/settings_ex/SettingsPreferenceFragment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment$1;->this$0:Lcom/android/settings_ex/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->highlightPreferenceIfNeeded()V

    .line 76
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/SettingsPreferenceFragment$1;->this$0:Lcom/android/settings_ex/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->highlightPreferenceIfNeeded()V

    .line 81
    return-void
.end method
