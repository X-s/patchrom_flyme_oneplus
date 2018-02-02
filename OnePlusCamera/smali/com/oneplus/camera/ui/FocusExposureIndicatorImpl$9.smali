.class Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$9;
.super Ljava/lang/Object;
.source "FocusExposureIndicatorImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;

    .prologue
    .line 1303
    iput-object p1, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$9;->this$0:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 2
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .param p2, "key"    # Lcom/oneplus/base/PropertyKey;
    .param p3, "e"    # Lcom/oneplus/base/PropertyChangeEventArgs;

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl$9;->this$0:Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;->-wrap10(Lcom/oneplus/camera/ui/FocusExposureIndicatorImpl;Z)V

    .line 1306
    return-void
.end method
