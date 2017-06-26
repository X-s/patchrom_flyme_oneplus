.class Lcom/oneplus/settings/OPDashboardSummary$SystemUpdateObserver;
.super Landroid/database/ContentObserver;
.source "OPDashboardSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPDashboardSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemUpdateObserver"
.end annotation


# instance fields
.field private final SYSTEM_UPDATE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/oneplus/settings/OPDashboardSummary;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/OPDashboardSummary;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/oneplus/settings/OPDashboardSummary$SystemUpdateObserver;->this$0:Lcom/oneplus/settings/OPDashboardSummary;

    .line 134
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 132
    const-string v0, "has_new_version_to_update"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPDashboardSummary$SystemUpdateObserver;->SYSTEM_UPDATE_URI:Landroid/net/Uri;

    .line 136
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/settings/OPDashboardSummary$SystemUpdateObserver;->onChange(ZLandroid/net/Uri;)V

    .line 152
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 141
    if-eqz p1, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/OPDashboardSummary$SystemUpdateObserver;->SYSTEM_UPDATE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/oneplus/settings/OPDashboardSummary$SystemUpdateObserver;->this$0:Lcom/oneplus/settings/OPDashboardSummary;

    # invokes: Lcom/oneplus/settings/OPDashboardSummary;->updateSystemUpdateSettings()V
    invoke-static {v0}, Lcom/oneplus/settings/OPDashboardSummary;->access$100(Lcom/oneplus/settings/OPDashboardSummary;)V

    goto :goto_0
.end method

.method public startObserving()V
    .locals 4

    .prologue
    .line 155
    iget-object v1, p0, Lcom/oneplus/settings/OPDashboardSummary$SystemUpdateObserver;->this$0:Lcom/oneplus/settings/OPDashboardSummary;

    # getter for: Lcom/oneplus/settings/OPDashboardSummary;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oneplus/settings/OPDashboardSummary;->access$200(Lcom/oneplus/settings/OPDashboardSummary;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 156
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 157
    iget-object v1, p0, Lcom/oneplus/settings/OPDashboardSummary$SystemUpdateObserver;->SYSTEM_UPDATE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 158
    return-void
.end method

.method public stopObserving()V
    .locals 2

    .prologue
    .line 161
    iget-object v1, p0, Lcom/oneplus/settings/OPDashboardSummary$SystemUpdateObserver;->this$0:Lcom/oneplus/settings/OPDashboardSummary;

    # getter for: Lcom/oneplus/settings/OPDashboardSummary;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oneplus/settings/OPDashboardSummary;->access$200(Lcom/oneplus/settings/OPDashboardSummary;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 162
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 163
    return-void
.end method
