.class Lcom/oneplus/settings/OPOnlineConfigManager$BackgroundConfigUpdater;
.super Ljava/lang/Object;
.source "OPOnlineConfigManager.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPOnlineConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BackgroundConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPOnlineConfigManager;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPOnlineConfigManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/OPOnlineConfigManager;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/oneplus/settings/OPOnlineConfigManager$BackgroundConfigUpdater;->this$0:Lcom/oneplus/settings/OPOnlineConfigManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 1
    .param p1, "configJsonArray"    # Lorg/json/JSONArray;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/oneplus/settings/OPOnlineConfigManager$BackgroundConfigUpdater;->this$0:Lcom/oneplus/settings/OPOnlineConfigManager;

    invoke-static {v0, p1}, Lcom/oneplus/settings/OPOnlineConfigManager;->-wrap0(Lcom/oneplus/settings/OPOnlineConfigManager;Lorg/json/JSONArray;)V

    .line 100
    return-void
.end method
