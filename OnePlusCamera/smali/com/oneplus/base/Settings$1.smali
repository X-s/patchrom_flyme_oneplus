.class Lcom/oneplus/base/Settings$1;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/base/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/base/Settings;


# direct methods
.method constructor <init>(Lcom/oneplus/base/Settings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/base/Settings;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/oneplus/base/Settings$1;->this$0:Lcom/oneplus/base/Settings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 46
    iget-object v0, p0, Lcom/oneplus/base/Settings$1;->this$0:Lcom/oneplus/base/Settings;

    invoke-virtual {v0}, Lcom/oneplus/base/Settings;->isDependencyThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/oneplus/base/Settings$1;->this$0:Lcom/oneplus/base/Settings;

    invoke-static {v0, p2}, Lcom/oneplus/base/Settings;->-wrap0(Lcom/oneplus/base/Settings;Ljava/lang/String;)V

    .line 44
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/oneplus/base/Settings$1;->this$0:Lcom/oneplus/base/Settings;

    const/16 v1, 0x2710

    invoke-static {v0, v1, v2, v2, p2}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IIILjava/lang/Object;)Z

    goto :goto_0
.end method
