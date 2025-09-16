from django.conf import settings
from django.shortcuts import render

def offerta(request):
    pdf_url = settings.MEDIA_URL + "docs/offerta.pdf"
    return render(request, "offerta.html", {"pdf_url": pdf_url})
