.class Lcom/oneplus/settings/OPDashboardSummary$2;
.super Ljava/lang/Object;
.source "OPDashboardSummary.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OPDashboardSummary;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPDashboardSummary;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPDashboardSummary;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/oneplus/settings/OPDashboardSummary$2;->this$0:Lcom/oneplus/settings/OPDashboardSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/oneplus/settings/OPDashboardSummary$2;->this$0:Lcom/oneplus/settings/OPDashboardSummary;

    # invokes: Lcom/oneplus/settings/OPDashboardSummary;->updateDevelopMent()V
    invoke-static {v0}, Lcom/oneplus/settings/OPDashboardSummary;->access$100(Lcom/oneplus/settings/OPDashboardSummary;)V

    .line 156
    return-void
.end method
