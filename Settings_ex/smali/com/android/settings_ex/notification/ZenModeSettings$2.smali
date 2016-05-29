.class Lcom/android/settings_ex/notification/ZenModeSettings$2;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"

# interfaces
.implements Lcom/android/settings_ex/notification/ZenModeSettings$SettingPrefWithCallback$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/ZenModeSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/ZenModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/ZenModeSettings;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/settings_ex/notification/ZenModeSettings$2;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettingSelected(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 198
    if-eqz p1, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings$2;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/notification/ZenModeSettings;->showConditionSelection(I)V

    .line 201
    :cond_0
    return-void
.end method
