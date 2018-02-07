.class Lcom/android/settings_ex/notification/NotificationSettingsBase$1;
.super Ljava/lang/Object;
.source "NotificationSettingsBase.java"

# interfaces
.implements Lcom/android/settings_ex/notification/ImportanceSeekBarPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/NotificationSettingsBase;->setupImportancePrefs(ZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/NotificationSettingsBase;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/NotificationSettingsBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/notification/NotificationSettingsBase;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase$1;->this$0:Lcom/android/settings_ex/notification/NotificationSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImportanceChanged(IZ)V
    .locals 3
    .param p1, "progress"    # I
    .param p2, "fromUser"    # Z

    .prologue
    .line 212
    if-eqz p2, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase$1;->this$0:Lcom/android/settings_ex/notification/NotificationSettingsBase;

    iget-object v0, v0, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mBackend:Lcom/android/settings_ex/notification/NotificationBackend;

    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase$1;->this$0:Lcom/android/settings_ex/notification/NotificationSettingsBase;

    iget-object v1, v1, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mPkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase$1;->this$0:Lcom/android/settings_ex/notification/NotificationSettingsBase;

    iget v2, v2, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mUid:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/settings_ex/notification/NotificationBackend;->setImportance(Ljava/lang/String;II)Z

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase$1;->this$0:Lcom/android/settings_ex/notification/NotificationSettingsBase;

    invoke-virtual {v0, p1}, Lcom/android/settings_ex/notification/NotificationSettingsBase;->updateDependents(I)V

    .line 211
    return-void
.end method
