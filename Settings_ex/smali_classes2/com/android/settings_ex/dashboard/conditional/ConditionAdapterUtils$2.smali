.class final Lcom/android/settings_ex/dashboard/conditional/ConditionAdapterUtils$2;
.super Ljava/lang/Object;
.source "ConditionAdapterUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/dashboard/conditional/ConditionAdapterUtils;->bindViews(Lcom/android/settings_ex/dashboard/conditional/Condition;Lcom/android/settings_ex/dashboard/DashboardAdapter$DashboardItemHolder;ZLandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$condition:Lcom/android/settings_ex/dashboard/conditional/Condition;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/android/settings_ex/dashboard/conditional/Condition;I)V
    .locals 0
    .param p1, "val$condition"    # Lcom/android/settings_ex/dashboard/conditional/Condition;
    .param p2, "val$index"    # I

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/settings_ex/dashboard/conditional/ConditionAdapterUtils$2;->val$condition:Lcom/android/settings_ex/dashboard/conditional/Condition;

    iput p2, p0, Lcom/android/settings_ex/dashboard/conditional/ConditionAdapterUtils$2;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/android/settings_ex/dashboard/conditional/ConditionAdapterUtils$2;->val$condition:Lcom/android/settings_ex/dashboard/conditional/Condition;

    invoke-virtual {v1}, Lcom/android/settings_ex/dashboard/conditional/Condition;->getMetricsConstant()I

    move-result v1

    .line 116
    const/16 v2, 0x178

    .line 115
    invoke-static {v0, v2, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 118
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/conditional/ConditionAdapterUtils$2;->val$condition:Lcom/android/settings_ex/dashboard/conditional/Condition;

    iget v1, p0, Lcom/android/settings_ex/dashboard/conditional/ConditionAdapterUtils$2;->val$index:I

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/dashboard/conditional/Condition;->onActionClick(I)V

    .line 114
    return-void
.end method
