.class Lcom/android/keyguard/KeyguardUpdateMonitor$SubInfoContent;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SubInfoContent"
.end annotation


# instance fields
.field public final column:Ljava/lang/String;

.field public final iValue:I

.field public final sValue:Ljava/lang/String;

.field public final subInfoId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "subInfoId"    # I
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "sValue"    # Ljava/lang/String;
    .param p4, "iValue"    # I

    .prologue
    .line 762
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 763
    iput p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SubInfoContent;->subInfoId:I

    .line 764
    iput-object p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SubInfoContent;->column:Ljava/lang/String;

    .line 765
    iput-object p3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SubInfoContent;->sValue:Ljava/lang/String;

    .line 766
    iput p4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$SubInfoContent;->iValue:I

    .line 767
    return-void
.end method
