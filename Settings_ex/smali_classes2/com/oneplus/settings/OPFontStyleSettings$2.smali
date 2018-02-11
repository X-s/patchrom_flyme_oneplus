.class Lcom/oneplus/settings/OPFontStyleSettings$2;
.super Ljava/lang/Object;
.source "OPFontStyleSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OPFontStyleSettings;->setFontStyle(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPFontStyleSettings;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPFontStyleSettings;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/OPFontStyleSettings;
    .param p2, "val$value"    # I

    .prologue
    .line 85
    iput-object p1, p0, Lcom/oneplus/settings/OPFontStyleSettings$2;->this$0:Lcom/oneplus/settings/OPFontStyleSettings;

    iput p2, p0, Lcom/oneplus/settings/OPFontStyleSettings$2;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 89
    const-wide/16 v2, 0x12c

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/OPFontStyleSettings$2;->this$0:Lcom/oneplus/settings/OPFontStyleSettings;

    invoke-static {v2}, Lcom/oneplus/settings/OPFontStyleSettings;->-wrap0(Lcom/oneplus/settings/OPFontStyleSettings;)Landroid/content/ContentResolver;

    move-result-object v2

    .line 95
    const-string/jumbo v3, "oem_font_mode"

    iget v4, p0, Lcom/oneplus/settings/OPFontStyleSettings$2;->val$value:I

    .line 94
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 96
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.OEM_FONT_MODE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "oem_font_mode"

    iget v3, p0, Lcom/oneplus/settings/OPFontStyleSettings$2;->val$value:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 99
    iget-object v2, p0, Lcom/oneplus/settings/OPFontStyleSettings$2;->this$0:Lcom/oneplus/settings/OPFontStyleSettings;

    invoke-static {v2}, Lcom/oneplus/settings/OPFontStyleSettings;->-wrap1(Lcom/oneplus/settings/OPFontStyleSettings;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 87
    return-void

    .line 90
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
