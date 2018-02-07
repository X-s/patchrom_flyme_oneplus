.class Lcom/android/settings_ex/SettingsActivity$8;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/SettingsActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/SettingsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/SettingsActivity;

    .prologue
    .line 1066
    iput-object p1, p0, Lcom/android/settings_ex/SettingsActivity$8;->this$0:Lcom/android/settings_ex/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/android/settings_ex/SettingsActivity$8;->this$0:Lcom/android/settings_ex/SettingsActivity;

    invoke-static {v0}, Lcom/android/settings_ex/SettingsActivity;->-wrap1(Lcom/android/settings_ex/SettingsActivity;)V

    .line 1068
    return-void
.end method
