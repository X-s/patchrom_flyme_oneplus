.class Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$7;
.super Ljava/lang/Object;
.source "OPFingerPrintEditFragments.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->showDeleteDialog(Landroid/hardware/fingerprint/Fingerprint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$7;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 346
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 345
    return-void
.end method
