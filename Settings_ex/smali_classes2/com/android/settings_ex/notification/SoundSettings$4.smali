.class final Lcom/android/settings_ex/notification/SoundSettings$4;
.super Lcom/android/settings_ex/notification/SettingPref;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/SoundSettings;
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
    .line 232
    invoke-direct/range {p0 .. p5}, Lcom/android/settings_ex/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    .line 233
    return-void
.end method


# virtual methods
.method public isApplicable(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 236
    invoke-static {p1}, Lcom/android/settings_ex/notification/SoundSettings;->-wrap1(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
