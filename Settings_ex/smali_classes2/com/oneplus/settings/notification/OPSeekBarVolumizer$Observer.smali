.class final Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Observer;
.super Landroid/database/ContentObserver;
.source "OPSeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/notification/OPSeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Observer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/notification/OPSeekBarVolumizer;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Observer;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    .line 420
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 419
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 425
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 426
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPSeekBarVolumizer$Observer;->this$0:Lcom/oneplus/settings/notification/OPSeekBarVolumizer;

    invoke-static {v0}, Lcom/oneplus/settings/notification/OPSeekBarVolumizer;->-wrap1(Lcom/oneplus/settings/notification/OPSeekBarVolumizer;)V

    .line 424
    return-void
.end method
