.class Lcom/android/settings_ex/DataUsageSummary$UpdateRuleTask$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/oneplus/settings/ui/OPProgressDialog$OnTimeOutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/DataUsageSummary$UpdateRuleTask;->onPreExecute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/DataUsageSummary$UpdateRuleTask;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DataUsageSummary$UpdateRuleTask;)V
    .locals 0

    .prologue
    .line 1559
    iput-object p1, p0, Lcom/android/settings_ex/DataUsageSummary$UpdateRuleTask$1;->this$1:Lcom/android/settings_ex/DataUsageSummary$UpdateRuleTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeOut(Lcom/oneplus/settings/ui/OPProgressDialog;)V
    .locals 2
    .param p1, "dialog"    # Lcom/oneplus/settings/ui/OPProgressDialog;

    .prologue
    .line 1562
    const-string v0, "DataUsage"

    const-string v1, "UpdateRuleTask onTimeOut"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    return-void
.end method
