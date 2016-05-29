.class Lcom/android/settings_ex/wifi/AdvancedWifiSettings$3;
.super Ljava/lang/Object;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->initPreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)V
    .locals 0

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "arg0"    # Landroid/preference/Preference;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$3;->this$0:Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    const/4 v1, 0x2

    # invokes: Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->access$200(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;I)V

    .line 309
    const/4 v0, 0x1

    return v0
.end method
