<marquee direction="left">
    @foreach ($this->bulletin->running_text() as $running_text)
        <i class="fa fa-superpowers" aria-hidden="true"></i> {{ strip_tags($running_text->text) }}
    @endforeach
</marquee>