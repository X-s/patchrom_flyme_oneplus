.class Lcom/android/server/am/OnePlusPerfManager$MyConfigUpdater;
.super Ljava/lang/Object;
.source "OnePlusPerfManager.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPerfManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusPerfManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusPerfManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusPerfManager;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/server/am/OnePlusPerfManager$MyConfigUpdater;->this$0:Lcom/android/server/am/OnePlusPerfManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 1
    .param p1, "configJSONArray"    # Lorg/json/JSONArray;

    .prologue
    .line 188
    sget-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "updateConfig"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusPerfManager$MyConfigUpdater;->this$0:Lcom/android/server/am/OnePlusPerfManager;

    invoke-static {v0, p1}, Lcom/android/server/am/OnePlusPerfManager;->-wrap0(Lcom/android/server/am/OnePlusPerfManager;Lorg/json/JSONArray;)V

    .line 187
    return-void
.end method
