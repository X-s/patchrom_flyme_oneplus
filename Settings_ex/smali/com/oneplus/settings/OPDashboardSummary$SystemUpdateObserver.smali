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
    .line 282
    iput-object p1, p0, Lcom/oneplus/settings/OPDashboardSummary$SystemUpdateObserver;->this$0:Lcom/oneplus/settings/OPDashboardSummary;

    .line 283
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 281
    const-string v0, "has_new_version_to_update"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPDashboardSummary$SystemUpdateObserver;->SYSTEM_UPDATE_URI:Landroid/net/Uri;

    .line 285
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 300
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/settings/OPDashboardSummary$SystemUpdateObserver;->onChange(ZLandroid/net/Uri;)V

    .line 301
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 290
    if-eqz p1, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/OPDashboardSummary$SystemUpdateObserver;->SYSTEM_UPDATE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/OPDashboardSummary$SystemUpdateObserver;->this$0:Lcom/oneplus/settings/OPDashboardSummary;

    # getter for: Lcom/oneplus/settings/OPDashboardSummary;->ALL_DOWNLOAD_FILES_URI:Landroid/net/Uri;
    invoke-static {v0}, Lcom/oneplus/settings/OPDashboardSummary;->access$200(Lcom/oneplus/settings/OPDashboardSummary;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/OPDashboardSummary$SystemUpdateObserver;->this$0:Lcom/oneplus/settings/OPDashboardSummary;

    # invokes: Lcom/oneplus/settings/OPDashboardSummary;->updateSystemUpdateSettings()V
    invoke-static {v0}, Lcom/oneplus/settings/OPDashboardSummary;->access$300(Lcom/oneplus/settings/OPDashboardSummary;)V

    goto :goto_0
.end method

.method public startObserving()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 304
    iget-object v1, p0, Lcom/oneplus/settings/OPDashboardSummary$SystemUpdateObserver;->this$0:Lcom/oneplus/settings/OPDashboardSummary;

    # getter for: Lcom/oneplus/settings/OPDashboardSummary;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oneplus/settings/OPDashboardSummary;->access$400(Lcom/oneplus/settings/OPDashboardSummary;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 305
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 306
    iget-object v1, p0, Lcom/oneplus/settings/OPDashboardSummary$SystemUpdateObserver;->SYSTEM_UPDATE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 307
    iget-object v1, p0, Lcom/oneplus/settings/OPDashboardSummary$SystemUpdateObserver;->this$0:Lcom/oneplus/settings/OPDashboardSummary;

    # getter for: Lcom/oneplus/settings/OPDashboardSummary;->ALL_DOWNLOAD_FILES_URI:Landroid/net/Uri;
    invoke-static {v1}, Lcom/oneplus/settings/OPDashboardSummary;->access$200(Lcom/oneplus/settings/OPDashboardSummary;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 308
    return-void
.end method

.method public stopObserving()V
    .locals 2

    .prologue
    .line 311
    iget-object v1, p0, Lcom/oneplus/settings/OPDashboardSummary$SystemUpdateObserver;->this$0:Lcom/oneplus/settings/OPDashboardSummary;

    # getter for: Lcom/oneplus/settings/OPDashboardSummary;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/oneplus/settings/OPDashboardSummary;->access$400(Lcom/oneplus/settings/OPDashboardSummary;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 312
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 313
    return-void
.end method
