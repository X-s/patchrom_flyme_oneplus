.class Lcom/android/server/policy/OemPhoneWindowManager$QuickPayConfigUpdater;
.super Ljava/lang/Object;
.source "OemPhoneWindowManager.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OemPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QuickPayConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/OemPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OemPhoneWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/OemPhoneWindowManager;

    .prologue
    .line 2144
    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager$QuickPayConfigUpdater;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 1
    .param p1, "configJSONArray"    # Lorg/json/JSONArray;

    .prologue
    .line 2147
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$QuickPayConfigUpdater;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v0, p1}, Lcom/android/server/policy/OemPhoneWindowManager;->-wrap8(Lcom/android/server/policy/OemPhoneWindowManager;Lorg/json/JSONArray;)V

    .line 2146
    return-void
.end method
