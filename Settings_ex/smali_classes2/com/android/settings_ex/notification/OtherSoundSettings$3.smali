.class final Lcom/android/settings_ex/notification/OtherSoundSettings$3;
.super Lcom/android/settings_ex/notification/SettingPref;
.source "OtherSoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/OtherSoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method varargs constructor <init>(ILjava/lang/String;Ljava/lang/String;I[I)V
    .locals 0
    .param p1, "$anonymous0"    # I
    .param p2, "$anonymous1"    # Ljava/lang/String;
    .param p3, "$anonymous2"    # Ljava/lang/String;
    .param p4, "$anonymous3"    # I
    .param p5, "$anonymous4"    # [I

    .prologue
    .line 93
    invoke-direct/range {p0 .. p5}, Lcom/android/settings_ex/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    .line 94
    return-void
.end method


# virtual methods
.method protected setSetting(Landroid/content/Context;I)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "value"    # I

    .prologue
    .line 97
    new-instance v0, Lcom/android/settings_ex/notification/OtherSoundSettings$3$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings_ex/notification/OtherSoundSettings$3$1;-><init>(Lcom/android/settings_ex/notification/OtherSoundSettings$3;Landroid/content/Context;I)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 109
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/notification/SettingPref;->setSetting(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method
