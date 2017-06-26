.class Lcom/oneplus/settings/OPDisplaySettings$6;
.super Ljava/lang/Object;
.source "OPDisplaySettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OPDisplaySettings;->saveBrightnessDataBase(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPDisplaySettings;

.field final synthetic val$adj:F


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPDisplaySettings;F)V
    .locals 0

    .prologue
    .line 1097
    iput-object p1, p0, Lcom/oneplus/settings/OPDisplaySettings$6;->this$0:Lcom/oneplus/settings/OPDisplaySettings;

    iput p2, p0, Lcom/oneplus/settings/OPDisplaySettings$6;->val$adj:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/oneplus/settings/OPDisplaySettings$6;->this$0:Lcom/oneplus/settings/OPDisplaySettings;

    # getter for: Lcom/oneplus/settings/OPDisplaySettings;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/oneplus/settings/OPDisplaySettings;->access$900(Lcom/oneplus/settings/OPDisplaySettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_auto_brightness_adj"

    iget v2, p0, Lcom/oneplus/settings/OPDisplaySettings$6;->val$adj:F

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 1101
    return-void
.end method
