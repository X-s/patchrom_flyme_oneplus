.class Lcom/android/settings_ex/notification/NotificationSettingsBase$5;
.super Ljava/lang/Object;
.source "NotificationSettingsBase.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/NotificationSettingsBase;->setupVisOverridePref(I)V
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
    .line 303
    iput-object p1, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase$5;->this$0:Lcom/android/settings_ex/notification/NotificationSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 306
    check-cast p2, Ljava/lang/String;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 307
    .local v0, "sensitive":I
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase$5;->this$0:Lcom/android/settings_ex/notification/NotificationSettingsBase;

    invoke-static {v1}, Lcom/android/settings_ex/notification/NotificationSettingsBase;->-wrap0(Lcom/android/settings_ex/notification/NotificationSettingsBase;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 308
    const/16 v0, -0x3e8

    .line 310
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase$5;->this$0:Lcom/android/settings_ex/notification/NotificationSettingsBase;

    iget-object v1, v1, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mBackend:Lcom/android/settings_ex/notification/NotificationBackend;

    iget-object v2, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase$5;->this$0:Lcom/android/settings_ex/notification/NotificationSettingsBase;

    iget-object v2, v2, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings_ex/notification/NotificationSettingsBase$5;->this$0:Lcom/android/settings_ex/notification/NotificationSettingsBase;

    iget v3, v3, Lcom/android/settings_ex/notification/NotificationSettingsBase;->mUid:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/settings_ex/notification/NotificationBackend;->setVisibilityOverride(Ljava/lang/String;II)Z

    .line 311
    const/4 v1, 0x1

    return v1
.end method
