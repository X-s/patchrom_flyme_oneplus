.class Lcom/android/internal/telephony/OPOnlineConfigApn$OPOnlineConfigApnUpdater;
.super Ljava/lang/Object;
.source "OPOnlineConfigApn.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/OPOnlineConfigApn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OPOnlineConfigApnUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/OPOnlineConfigApn;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/OPOnlineConfigApn;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/OPOnlineConfigApn;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/internal/telephony/OPOnlineConfigApn$OPOnlineConfigApnUpdater;->this$0:Lcom/android/internal/telephony/OPOnlineConfigApn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 2
    .param p1, "configJsonArray"    # Lorg/json/JSONArray;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/telephony/OPOnlineConfigApn$OPOnlineConfigApnUpdater;->this$0:Lcom/android/internal/telephony/OPOnlineConfigApn;

    const-string/jumbo v1, "updateConfig() call triggerOPOnlineConfigApnLoading(0)"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/OPOnlineConfigApn;->-wrap0(Lcom/android/internal/telephony/OPOnlineConfigApn;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/android/internal/telephony/OPOnlineConfigApn$OPOnlineConfigApnUpdater;->this$0:Lcom/android/internal/telephony/OPOnlineConfigApn;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/OPOnlineConfigApn;->-wrap2(Lcom/android/internal/telephony/OPOnlineConfigApn;I)V

    .line 121
    return-void
.end method
