.class Lcom/android/server/am/ActivityManagerService$EmbryoConfigUpdater;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EmbryoConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 8011
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$EmbryoConfigUpdater;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 1
    .param p1, "configJSONArray"    # Lorg/json/JSONArray;

    .prologue
    .line 8014
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$EmbryoConfigUpdater;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->-get7(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/IEmbryoManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/am/IEmbryoManager;->resolveConfig(Lorg/json/JSONArray;)V

    .line 8013
    return-void
.end method
