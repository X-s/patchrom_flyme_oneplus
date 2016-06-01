.class Lcom/oppo/tribune/util/UsbStateReceiver$1;
.super Ljava/lang/Object;
.source "UsbStateReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/tribune/util/UsbStateReceiver;->showAboutSDcardTips()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oppo/tribune/util/UsbStateReceiver;


# direct methods
.method constructor <init>(Lcom/oppo/tribune/util/UsbStateReceiver;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/oppo/tribune/util/UsbStateReceiver$1;->this$0:Lcom/oppo/tribune/util/UsbStateReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/oppo/tribune/util/UsbStateReceiver$1;->this$0:Lcom/oppo/tribune/util/UsbStateReceiver;

    iget-object v0, v0, Lcom/oppo/tribune/util/UsbStateReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oppo/tribune/util/PhoneInfo;->exitApp(Landroid/content/Context;)V

    .line 69
    return-void
.end method
