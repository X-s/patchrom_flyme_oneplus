.class public abstract Lcom/oppo/tribune/util/BaseReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BaseReceiver.java"


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/oppo/tribune/util/BaseReceiver;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public abstract registerReceiver()V
.end method

.method public abstract unRegisterReceiver()V
.end method
