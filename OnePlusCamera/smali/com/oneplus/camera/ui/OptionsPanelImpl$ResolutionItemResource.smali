.class final Lcom/oneplus/camera/ui/OptionsPanelImpl$ResolutionItemResource;
.super Ljava/lang/Object;
.source "OptionsPanelImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/OptionsPanelImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ResolutionItemResource"
.end annotation


# instance fields
.field public iconResId:I

.field final synthetic this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

.field public titleResId:I


# direct methods
.method private constructor <init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/OptionsPanelImpl;

    .prologue
    const/4 v0, 0x0

    .line 108
    iput-object p1, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$ResolutionItemResource;->this$0:Lcom/oneplus/camera/ui/OptionsPanelImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$ResolutionItemResource;->iconResId:I

    .line 111
    iput v0, p0, Lcom/oneplus/camera/ui/OptionsPanelImpl$ResolutionItemResource;->titleResId:I

    .line 108
    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;Lcom/oneplus/camera/ui/OptionsPanelImpl$ResolutionItemResource;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/OptionsPanelImpl;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/camera/ui/OptionsPanelImpl$ResolutionItemResource;-><init>(Lcom/oneplus/camera/ui/OptionsPanelImpl;)V

    return-void
.end method
