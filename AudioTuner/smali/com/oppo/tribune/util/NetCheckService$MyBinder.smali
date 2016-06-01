.class public Lcom/oppo/tribune/util/NetCheckService$MyBinder;
.super Landroid/os/Binder;
.source "NetCheckService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/util/NetCheckService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/tribune/util/NetCheckService;


# direct methods
.method public constructor <init>(Lcom/oppo/tribune/util/NetCheckService;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/oppo/tribune/util/NetCheckService$MyBinder;->this$0:Lcom/oppo/tribune/util/NetCheckService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/oppo/tribune/util/NetCheckService;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oppo/tribune/util/NetCheckService$MyBinder;->this$0:Lcom/oppo/tribune/util/NetCheckService;

    return-object v0
.end method
