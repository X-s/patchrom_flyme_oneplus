.class Lcom/android/settings_ex/dashboard/SummaryLoader$1;
.super Ljava/lang/Object;
.source "SummaryLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/dashboard/SummaryLoader;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/dashboard/SummaryLoader;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/dashboard/SummaryLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/dashboard/SummaryLoader;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/settings_ex/dashboard/SummaryLoader$1;->this$0:Lcom/android/settings_ex/dashboard/SummaryLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings_ex/dashboard/SummaryLoader$1;->this$0:Lcom/android/settings_ex/dashboard/SummaryLoader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings_ex/dashboard/SummaryLoader;->-wrap1(Lcom/android/settings_ex/dashboard/SummaryLoader;Z)V

    .line 79
    return-void
.end method
