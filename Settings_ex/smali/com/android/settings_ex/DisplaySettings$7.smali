.class Lcom/android/settings_ex/DisplaySettings$7;
.super Ljava/lang/Object;
.source "DisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DisplaySettings;->saveBrightnessDataBase(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/DisplaySettings;

.field final synthetic val$brightness:I


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DisplaySettings;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/DisplaySettings;
    .param p2, "val$brightness"    # I

    .prologue
    .line 1230
    iput-object p1, p0, Lcom/android/settings_ex/DisplaySettings$7;->this$0:Lcom/android/settings_ex/DisplaySettings;

    iput p2, p0, Lcom/android/settings_ex/DisplaySettings$7;->val$brightness:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 1236
    iget v1, p0, Lcom/android/settings_ex/DisplaySettings$7;->val$brightness:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    const/4 v0, 0x2

    .line 1238
    .local v0, "brightnessValue":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$7;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-static {v1}, Lcom/android/settings_ex/DisplaySettings;->-get3(Lcom/android/settings_ex/DisplaySettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1239
    const-string/jumbo v2, "screen_brightness"

    .line 1237
    invoke-static {v1, v2, v0, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1242
    iget-object v1, p0, Lcom/android/settings_ex/DisplaySettings$7;->this$0:Lcom/android/settings_ex/DisplaySettings;

    invoke-static {v1}, Lcom/android/settings_ex/DisplaySettings;->-get3(Lcom/android/settings_ex/DisplaySettings;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1244
    const-string/jumbo v2, "screen_auto_brightness_adj"

    .line 1245
    int-to-float v3, v0

    .line 1241
    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 1231
    return-void

    .line 1236
    .end local v0    # "brightnessValue":I
    :cond_0
    iget v0, p0, Lcom/android/settings_ex/DisplaySettings$7;->val$brightness:I

    .restart local v0    # "brightnessValue":I
    goto :goto_0
.end method
